package game

import rl "vendor:raylib"

Sprite :: struct {
    offset: Vec2,
    rect: rl.Rectangle,
}

draw :: proc(ent: $T) {
    rl.DrawTextureRec(texture, ent.rect, ent.position + ent.offset, rl.WHITE)
}

// this is so fucking stupid???
entity_render :: proc(entity: Entity) {
    switch ent in entity.type {
    case ^Player: draw(ent)
    case ^Item:   draw(ent)
    }
}