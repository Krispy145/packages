bool isSameType<T, E>({bool includeOptional = true}) {
  if (T == E) return true;
  if (includeOptional) {
    return <T>[] is List<E?>;
  }
  return false;
}
