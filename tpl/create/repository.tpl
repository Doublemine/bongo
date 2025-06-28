package repository

import (
    "context"
	"{{ .ProjectName }}/internal/model"
)

type {{ .StructName }}Repository interface {
	Get{{ .StructName }}(ctx context.Context, id int64) (*model.{{ .StructName }}, error)
	Create{{ .StructName }}(ctx context.Context, {{ .StructNameLowerFirst }} *model.{{ .StructName }}) error
	Update{{ .StructName }}(ctx context.Context, {{ .StructNameLowerFirst }} *model.{{ .StructName }}) error
	Delete{{ .StructName }}(ctx context.Context, id int64) error
}

func New{{ .StructName }}Repository(
	repository *Repository,
) {{ .StructName }}Repository {
	return &{{ .StructNameLowerFirst }}Repository{
		Repository: repository,
	}
}

type {{ .StructNameLowerFirst }}Repository struct {
	*Repository
}

func (r *{{ .StructNameLowerFirst }}Repository) Get{{ .StructName }}(ctx context.Context, id int64) (*model.{{ .StructName }}, error) {
	var {{ .StructNameLowerFirst }} model.{{ .StructName }}
	err := r.db.NewSelect().Model(&{{ .StructNameLowerFirst }}).Where("id = ?", id).Scan(ctx)
	if err != nil {
		return nil, err
	}
	return &{{ .StructNameLowerFirst }}, nil
}

func (r *{{ .StructNameLowerFirst }}Repository) Create{{ .StructName }}(ctx context.Context, {{ .StructNameLowerFirst }} *model.{{ .StructName }}) error {
	_, err := r.db.NewInsert().Model({{ .StructNameLowerFirst }}).Exec(ctx)
	return err
}

func (r *{{ .StructNameLowerFirst }}Repository) Update{{ .StructName }}(ctx context.Context, {{ .StructNameLowerFirst }} *model.{{ .StructName }}) error {
	_, err := r.db.NewUpdate().Model({{ .StructNameLowerFirst }}).WherePK().Exec(ctx)
	return err
}

func (r *{{ .StructNameLowerFirst }}Repository) Delete{{ .StructName }}(ctx context.Context, id int64) error {
	_, err := r.db.NewDelete().Model((*model.{{ .StructName }})(nil)).Where("id = ?", id).Exec(ctx)
	return err
}
