enum TypeTask implements Comparable<TypeTask> {
  sowing(name: 'Посев'),
  tillage(name: 'Обработка почвы'),
  protection(name: 'Защита растений');

  const TypeTask({
    required this.name,
  });

  final String name;

  @override
  int compareTo(TypeTask other) => index - other.index;
}

// посев, обработка почвы, защита