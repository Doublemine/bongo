package model

import (
	"time"

	"github.com/uptrace/bun"
)

type {{ .StructName }} struct {
	bun.BaseModel `bun:"table:{{ .StructNameSnakeCase }},alias:{{ .StructNameLowerFirst }}"`

	ID        int64     `bun:"id,pk,autoincrement"`
	CreatedAt time.Time `bun:"created_at,nullzero,notnull,default:current_timestamp"`
	UpdatedAt time.Time `bun:"updated_at,nullzero,notnull,default:current_timestamp"`
	DeletedAt time.Time `bun:"deleted_at,soft_delete,nullzero"`
}
