import 'package:flutter/material.dart';
import 'dart:convert';

class JsonDisplayScreen extends StatefulWidget {
  final Map<String, dynamic> jsonData;

  const JsonDisplayScreen({Key? key, required this.jsonData}) : super(key: key);

  @override
  _JsonDisplayScreenState createState() => _JsonDisplayScreenState();
}

class _JsonDisplayScreenState extends State<JsonDisplayScreen> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON Display'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _performSearch,
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CollapsibleJsonWidget(
                      data: widget.jsonData,
                      searchQuery: _searchQuery,
                      initiallyExpanded: true,
                      isTopLevel: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _performSearch(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
    });
  }
}

class CollapsibleJsonWidget extends StatefulWidget {
  final dynamic data;
  final String? keyName;
  final String searchQuery;
  final bool initiallyExpanded;
  final bool isTopLevel;

  const CollapsibleJsonWidget({
    Key? key,
    required this.data,
    this.keyName,
    required this.searchQuery,
    this.initiallyExpanded = false,
    this.isTopLevel = false,
  }) : super(key: key);

  @override
  State<CollapsibleJsonWidget> createState() => _CollapsibleJsonWidgetState();
}

class _CollapsibleJsonWidgetState extends State<CollapsibleJsonWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.data is Map) {
      return widget.isTopLevel
          ? _buildTopLevelMap(widget.data)
          : _buildMap(widget.data);
    } else if (widget.data is List) {
      return widget.isTopLevel
          ? _buildTopLevelList(widget.data)
          : _buildList(widget.data);
    } else {
      return _highlightText(widget.data.toString());
    }
  }

  Widget _buildTopLevelMap(Map data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data.entries.map((entry) {
        return CollapsibleJsonWidget(
          data: entry.value,
          keyName: entry.key,
          searchQuery: widget.searchQuery,
          initiallyExpanded: widget.initiallyExpanded,
        );
      }).toList(),
    );
  }

  Widget _buildTopLevelList(List data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data.asMap().entries.map((entry) {
        return CollapsibleJsonWidget(
          data: entry.value,
          keyName: 'Item ${entry.key}',
          searchQuery: widget.searchQuery,
          initiallyExpanded: widget.initiallyExpanded,
        );
      }).toList(),
    );
  }

  Widget _buildMap(Map data) {
    return ExpansionTile(
      initiallyExpanded: widget.initiallyExpanded,
      title: _highlightText(widget.keyName ?? '{...}'),
      children: data.entries.map((entry) {
        return CollapsibleJsonWidget(
          data: entry.value,
          keyName: entry.key,
          searchQuery: widget.searchQuery,
          initiallyExpanded: false,
        );
      }).toList(),
    );
  }

  Widget _buildList(List data) {
    return ExpansionTile(
      initiallyExpanded: widget.initiallyExpanded,
      title: _highlightText(widget.keyName ?? '[${data.length} items]'),
      children: data.asMap().entries.map((entry) {
        if (entry.value is Map) {
          return CollapsibleJsonWidget(
            data: entry.value,
            keyName: 'Item ${entry.key}',
            searchQuery: widget.searchQuery,
          );
        } else {
          return ListTile(
            title: _highlightText('Item ${entry.key}'),
            subtitle: _highlightText(entry.key.toString()),
          );
        }
      }).toList(),
    );
  }

  Widget _highlightText(String text) {
    if (widget.searchQuery.isEmpty) {
      return Text(text);
    }

    List<TextSpan> spans = [];
    int start = 0;
    int indexOfMatch;

    while ((indexOfMatch = text
            .toLowerCase()
            .indexOf(widget.searchQuery.toLowerCase(), start)) !=
        -1) {
      if (start != indexOfMatch) {
        spans.add(TextSpan(text: text.substring(start, indexOfMatch)));
      }
      spans.add(TextSpan(
        text: text.substring(
            indexOfMatch, indexOfMatch + widget.searchQuery.length),
        style: const TextStyle(backgroundColor: Colors.yellow),
      ));
      start = indexOfMatch + widget.searchQuery.length;
    }

    if (start != text.length) {
      spans.add(TextSpan(text: text.substring(start)));
    }

    return RichText(
        text: TextSpan(
            style: DefaultTextStyle.of(context).style, children: spans));
  }
}
