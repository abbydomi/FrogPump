repeat(irandom_range(6, 12)) {
    instance_create_depth(other.x, other.y, depth-1, Blood)
}

instance_destroy(other)