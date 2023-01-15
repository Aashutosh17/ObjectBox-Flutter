// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'model/batch.dart';
import 'model/course.dart';
import 'model/student.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 4145705050929312622),
      name: 'Batch',
      lastPropertyId: const IdUid(3, 255116189475178023),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4314536531543677348),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 4343813794133121243),
            name: 'batchId',
            type: 9,
            flags: 2080,
            indexId: const IdUid(1, 8512995270345923403)),
        ModelProperty(
            id: const IdUid(3, 255116189475178023),
            name: 'batchName',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'student', srcEntity: 'Student', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(2, 7253244713772416646),
      name: 'Course',
      lastPropertyId: const IdUid(2, 2227987185546879144),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 134029260590110083),
            name: 'courseId',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 2227987185546879144),
            name: 'courseName',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'student', srcEntity: 'Student', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(3, 8864978005344583741),
      name: 'Student',
      lastPropertyId: const IdUid(6, 2772187257428945861),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5208264243422945183),
            name: 'stdId',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 7781518990257809344),
            name: 'fname',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6448828600391806204),
            name: 'lname',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 829752837679996508),
            name: 'username',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6948912251633128046),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2772187257428945861),
            name: 'batchId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 8236605756102691936),
            relationTarget: 'Batch')
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(1, 3966668136864193364),
            name: 'course',
            targetId: const IdUid(2, 7253244713772416646))
      ],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(3, 8864978005344583741),
      lastIndexId: const IdUid(2, 8236605756102691936),
      lastRelationId: const IdUid(1, 3966668136864193364),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Batch: EntityDefinition<Batch>(
        model: _entities[0],
        toOneRelations: (Batch object) => [],
        toManyRelations: (Batch object) => {
              RelInfo<Student>.toOneBacklink(
                      6, object.id, (Student srcObject) => srcObject.batch):
                  object.student
            },
        getId: (Batch object) => object.id,
        setId: (Batch object, int id) {
          object.id = id;
        },
        objectToFB: (Batch object, fb.Builder fbb) {
          final batchIdOffset =
              object.batchId == null ? null : fbb.writeString(object.batchId!);
          final batchNameOffset = object.batchName == null
              ? null
              : fbb.writeString(object.batchName!);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, batchIdOffset);
          fbb.addOffset(2, batchNameOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Batch(
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0));
          InternalToManyAccess.setRelInfo(
              object.student,
              store,
              RelInfo<Student>.toOneBacklink(
                  6, object.id, (Student srcObject) => srcObject.batch),
              store.box<Batch>());
          return object;
        }),
    Course: EntityDefinition<Course>(
        model: _entities[1],
        toOneRelations: (Course object) => [],
        toManyRelations: (Course object) => {
              RelInfo<Student>.toManyBacklink(1, object.courseId):
                  object.student
            },
        getId: (Course object) => object.courseId,
        setId: (Course object, int id) {
          object.courseId = id;
        },
        objectToFB: (Course object, fb.Builder fbb) {
          final courseNameOffset = fbb.writeString(object.courseName);
          fbb.startTable(3);
          fbb.addInt64(0, object.courseId);
          fbb.addOffset(1, courseNameOffset);
          fbb.finish(fbb.endTable());
          return object.courseId;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Course(
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              courseId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0));
          InternalToManyAccess.setRelInfo(
              object.student,
              store,
              RelInfo<Student>.toManyBacklink(1, object.courseId),
              store.box<Course>());
          return object;
        }),
    Student: EntityDefinition<Student>(
        model: _entities[2],
        toOneRelations: (Student object) => [object.batch],
        toManyRelations: (Student object) =>
            {RelInfo<Student>.toMany(1, object.stdId): object.course},
        getId: (Student object) => object.stdId,
        setId: (Student object, int id) {
          object.stdId = id;
        },
        objectToFB: (Student object, fb.Builder fbb) {
          final fnameOffset =
              object.fname == null ? null : fbb.writeString(object.fname!);
          final lnameOffset =
              object.lname == null ? null : fbb.writeString(object.lname!);
          final usernameOffset = object.username == null
              ? null
              : fbb.writeString(object.username!);
          final passwordOffset = object.password == null
              ? null
              : fbb.writeString(object.password!);
          fbb.startTable(7);
          fbb.addInt64(0, object.stdId);
          fbb.addOffset(1, fnameOffset);
          fbb.addOffset(2, lnameOffset);
          fbb.addOffset(3, usernameOffset);
          fbb.addOffset(4, passwordOffset);
          fbb.addInt64(5, object.batch.targetId);
          fbb.finish(fbb.endTable());
          return object.stdId;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Student(
              fname: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              lname: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              username: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              password: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              stdId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0));
          object.batch.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 14, 0);
          object.batch.attach(store);
          InternalToManyAccess.setRelInfo(object.course, store,
              RelInfo<Student>.toMany(1, object.stdId), store.box<Student>());
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Batch] entity fields to define ObjectBox queries.
class Batch_ {
  /// see [Batch.id]
  static final id = QueryIntegerProperty<Batch>(_entities[0].properties[0]);

  /// see [Batch.batchId]
  static final batchId = QueryStringProperty<Batch>(_entities[0].properties[1]);

  /// see [Batch.batchName]
  static final batchName =
      QueryStringProperty<Batch>(_entities[0].properties[2]);
}

/// [Course] entity fields to define ObjectBox queries.
class Course_ {
  /// see [Course.courseId]
  static final courseId =
      QueryIntegerProperty<Course>(_entities[1].properties[0]);

  /// see [Course.courseName]
  static final courseName =
      QueryStringProperty<Course>(_entities[1].properties[1]);
}

/// [Student] entity fields to define ObjectBox queries.
class Student_ {
  /// see [Student.stdId]
  static final stdId =
      QueryIntegerProperty<Student>(_entities[2].properties[0]);

  /// see [Student.fname]
  static final fname = QueryStringProperty<Student>(_entities[2].properties[1]);

  /// see [Student.lname]
  static final lname = QueryStringProperty<Student>(_entities[2].properties[2]);

  /// see [Student.username]
  static final username =
      QueryStringProperty<Student>(_entities[2].properties[3]);

  /// see [Student.password]
  static final password =
      QueryStringProperty<Student>(_entities[2].properties[4]);

  /// see [Student.batch]
  static final batch =
      QueryRelationToOne<Student, Batch>(_entities[2].properties[5]);

  /// see [Student.course]
  static final course =
      QueryRelationToMany<Student, Course>(_entities[2].relations[0]);
}
