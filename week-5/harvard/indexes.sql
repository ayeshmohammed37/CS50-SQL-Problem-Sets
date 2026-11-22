CREATE INDEX "idx_enrollments_student_course" ON "enrollments" ("student_id", "course_id");

CREATE INDEX "idx_enrollments_course_student" ON "enrollments" ("course_id", "student_id");

CREATE INDEX "idx_satisfies_course_requirement" ON "satisfies" ("course_id", "requirement_id");