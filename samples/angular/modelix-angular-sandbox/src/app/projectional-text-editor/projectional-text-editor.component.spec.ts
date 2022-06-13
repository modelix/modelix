import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ProjectionalTextEditorComponent } from './projectional-text-editor.component';

describe('ProjectionalTextEditorComponent', () => {
  let component: ProjectionalTextEditorComponent;
  let fixture: ComponentFixture<ProjectionalTextEditorComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ProjectionalTextEditorComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ProjectionalTextEditorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
