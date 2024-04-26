bool isSameType<T, E>({bool includeOptional = true}) {
  if (isSameType<T, E>()) return true;
  if (includeOptional) {
    return <T>[] is List<E?>;
  }
  return false;
}
