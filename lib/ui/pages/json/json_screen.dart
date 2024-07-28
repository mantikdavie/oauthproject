import 'package:flutter/material.dart';

class JsonDisplayScreen extends StatefulWidget {
  final Map<String, dynamic> jsonData;

  const JsonDisplayScreen({Key? key, required this.jsonData}) : super(key: key);

  @override
  State<JsonDisplayScreen> createState() => _JsonDisplayScreenState();
}

class _JsonDisplayScreenState extends State<JsonDisplayScreen> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON Viewer'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: _performSearch,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(16.0),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CollapsibleJsonWidget(
                    data: widget.jsonData,
                    searchQuery: _searchQuery,
                    initiallyExpanded: true,
                    isTopLevel: true,
                  ),
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

class CollapsibleJsonWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    if (data is Map) {
      return _buildMap(context, data);
    } else if (data is List) {
      return _buildList(context, data);
    } else {
      return _buildLeaf(context, data);
    }
  }

  Widget _buildMap(BuildContext context, Map data) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: isTopLevel || initiallyExpanded,
        title: _buildTitle(context, keyName ?? 'Object', '{...}'),
        children: data.entries.map((entry) {
          return CollapsibleJsonWidget(
            data: entry.value,
            keyName: entry.key,
            searchQuery: searchQuery,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildList(BuildContext context, List data) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: isTopLevel || initiallyExpanded,
        title: _buildTitle(context, keyName ?? 'Array', '[${data.length}]'),
        children: data.asMap().entries.map((entry) {
          return CollapsibleJsonWidget(
            data: entry.value,
            keyName: '[${entry.key}]',
            searchQuery: searchQuery,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildLeaf(BuildContext context, dynamic data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: _highlightText(context, keyName ?? '', true),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: _highlightText(context, data.toString(), false),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String key, String type) {
    return Row(
      children: [
        Expanded(child: _highlightText(context, key, true)),
        _highlightText(context, type, false),
      ],
    );
  }

  Widget _highlightText(BuildContext context, String text, bool isKey) {
    final style = isKey
        ? const TextStyle(fontWeight: FontWeight.bold)
        : const TextStyle(color: Colors.blue);

    if (searchQuery.isEmpty) {
      return Text(text, style: style);
    }

    List<TextSpan> spans = [];
    int start = 0;
    int indexOfMatch;

    while ((indexOfMatch =
            text.toLowerCase().indexOf(searchQuery.toLowerCase(), start)) !=
        -1) {
      if (start != indexOfMatch) {
        spans.add(
            TextSpan(text: text.substring(start, indexOfMatch), style: style));
      }
      spans.add(TextSpan(
        text: text.substring(indexOfMatch, indexOfMatch + searchQuery.length),
        style: style.copyWith(backgroundColor: Colors.yellow),
      ));
      start = indexOfMatch + searchQuery.length;
    }

    if (start != text.length) {
      spans.add(TextSpan(text: text.substring(start), style: style));
    }

    return RichText(text: TextSpan(children: spans));
  }
}
