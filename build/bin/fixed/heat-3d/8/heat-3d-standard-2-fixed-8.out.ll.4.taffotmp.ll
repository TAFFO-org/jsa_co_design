; ModuleID = './build/bin/fixed/heat-3d/8/heat-3d-standard-2-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %div, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul = fmul float %x.0, %x.0
  %sub = fsub float %val, %mul
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %div4 = fdiv float %sub, %mul3
  %add = fadd float %x.0, %div4
  %mul5 = fmul float %add, %add
  %sub6 = fsub float %val, %mul5
  %cmp7 = fcmp oge float %sub6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub6, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %add, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !31

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !32

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !33 !taffo.funinfo !34 !taffo.equivalentChild !35 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !37

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !38

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !40 {
entry:
  %A = alloca [5 x [5 x [5 x float]]], align 4, !taffo.info !41, !taffo.initweight !44, !taffo.target !45
  %B = alloca [5 x [5 x [5 x float]]], align 4, !taffo.info !41, !taffo.initweight !44
  %A1 = bitcast [5 x [5 x [5 x float]]]* %A to i8*, !taffo.info !46, !taffo.initweight !47, !taffo.target !45
  %B2 = bitcast [5 x [5 x [5 x float]]]* %B to i8*, !taffo.info !46, !taffo.initweight !47
  %arraydecay = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  %arraydecay3 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47
  call void @init_array.2(i32 noundef 5, [5 x [5 x float]]* noundef %arraydecay, [5 x [5 x float]]* noundef %arraydecay3), !taffo.info !48, !taffo.initweight !49, !taffo.constinfo !50, !taffo.target !45, !taffo.originalCall !51
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  %0 = bitcast [5 x [5 x float]]* %arraydecay4 to float*, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  call void @scale_3d.3(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %0, i32 noundef 2), !taffo.info !48, !taffo.initweight !52, !taffo.constinfo !53, !taffo.target !45, !taffo.originalCall !54
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47
  %1 = bitcast [5 x [5 x float]]* %arraydecay5 to float*, !taffo.info !41, !taffo.initweight !49
  call void @scale_3d.3(i32 noundef 5, i32 noundef 5, i32 noundef 5, float* noundef %1, i32 noundef 2), !taffo.info !48, !taffo.initweight !52, !taffo.constinfo !53, !taffo.originalCall !54
  call void @timer_start(), !taffo.constinfo !55
  %arraydecay6 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  %arraydecay7 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47
  call void @kernel_heat_3d.1(i32 noundef 10, i32 noundef 5, [5 x [5 x float]]* noundef %arraydecay6, [5 x [5 x float]]* noundef %arraydecay7), !taffo.info !48, !taffo.initweight !49, !taffo.constinfo !56, !taffo.target !45, !taffo.originalCall !57
  call void @timer_stop(), !taffo.constinfo !55
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc23, %for.inc22 ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, 5, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc20, %for.inc19 ], !taffo.info !62
  %cmp9 = icmp slt i32 %j.0, 5, !taffo.info !60
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body10
  %k.0 = phi i32 [ 0, %for.body10 ], [ %inc, %for.inc ], !taffo.info !64
  %cmp12 = icmp slt i32 %k.0, 5, !taffo.info !60
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 %i.0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  %arrayidx15 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !52, !taffo.target !45
  %2 = load float, float* %arrayidx15, align 4, !taffo.info !41, !taffo.initweight !66, !taffo.target !45
  %arrayidx16 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx16, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx18 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx17, i32 0, i32 %k.0, !taffo.info !0
  store float %2, float* %arrayidx18, align 4, !taffo.info !48, !taffo.initweight !67, !taffo.target !45
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %k.0, 1, !taffo.info !68, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !70

for.end:                                          ; preds = %for.cond11
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !73

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !76

for.end24:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 5, [5 x [5 x float]]* noundef getelementptr inbounds ([5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 0)), !taffo.constinfo !77
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [5 x [5 x float]]* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !78 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !60
  %cmp5 = icmp slt i32 %k.0, %n, !taffo.info !81
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %i.0, %n, !taffo.info !83
  %mul7 = mul nsw i32 %mul, %n, !taffo.info !83
  %mul8 = mul nsw i32 %j.0, %n, !taffo.info !83
  %add = add nsw i32 %mul7, %mul8, !taffo.info !83
  %add9 = add nsw i32 %add, %k.0, !taffo.info !83
  %rem = srem i32 %add9, 20, !taffo.info !83, !taffo.constinfo !21
  %cmp10 = icmp eq i32 %rem, 0, !taffo.info !81
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !77
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !0
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !0
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !50
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !85

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !86

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !87

for.end19:                                        ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d.1(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !88 !taffo.funinfo !89 !taffo.sourceFunction !57 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %t.0 = phi i32 [ 1, %entry ], [ %inc145, %for.inc144 ], !taffo.info !90
  %cmp = icmp sle i32 %t.0, 10, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc67, %for.inc66 ], !taffo.info !90
  %sub = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !60
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc64, %for.inc63 ], !taffo.info !90
  %sub5 = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !60
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 1, %for.body7 ], [ %inc, %for.inc ], !taffo.info !90
  %sub9 = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp10 = icmp slt i32 %k.0, %sub9, !taffo.info !60
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %add = add nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !21
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %add, !taffo.info !41, !taffo.initweight !67
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %0 = load float, float* %arrayidx13, align 4, !taffo.info !41, !taffo.initweight !98
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %1 = load float, float* %arrayidx16, align 4, !taffo.info !99, !taffo.initweight !98
  %mul = fmul float 2.000000e+00, %1, !taffo.info !101, !taffo.initweight !104, !taffo.constinfo !18
  %sub17 = fsub float %0, %mul, !taffo.info !105, !taffo.initweight !104
  %sub18 = sub nsw i32 %i.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %sub18, !taffo.info !41, !taffo.initweight !67
  %arrayidx20 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx20, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %2 = load float, float* %arrayidx21, align 4, !taffo.info !41, !taffo.initweight !98
  %add22 = fadd float %sub17, %2, !taffo.info !107, !taffo.initweight !104
  %mul23 = fmul float 1.250000e-01, %add22, !taffo.info !109, !taffo.initweight !112, !taffo.constinfo !113
  %arrayidx24 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %add25 = add nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !21
  %arrayidx26 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx24, i32 0, i32 %add25, !taffo.info !41, !taffo.initweight !96
  %arrayidx27 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx26, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %3 = load float, float* %arrayidx27, align 4, !taffo.info !41, !taffo.initweight !98
  %arrayidx28 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %arrayidx29 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx28, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %arrayidx30 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx29, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %4 = load float, float* %arrayidx30, align 4, !taffo.info !99, !taffo.initweight !98
  %mul31 = fmul float 2.000000e+00, %4, !taffo.info !101, !taffo.initweight !104, !taffo.constinfo !18
  %sub32 = fsub float %3, %mul31, !taffo.info !105, !taffo.initweight !104
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx35 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i32 0, i32 %sub34, !taffo.info !41, !taffo.initweight !96
  %arrayidx36 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx35, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %5 = load float, float* %arrayidx36, align 4, !taffo.info !41, !taffo.initweight !98
  %add37 = fadd float %sub32, %5, !taffo.info !107, !taffo.initweight !104
  %mul38 = fmul float 1.250000e-01, %add37, !taffo.info !109, !taffo.initweight !112, !taffo.constinfo !113
  %add39 = fadd float %mul23, %mul38, !taffo.info !116, !taffo.initweight !119
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %arrayidx41 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %add42 = add nsw i32 %k.0, 1, !taffo.info !94, !taffo.constinfo !21
  %arrayidx43 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx41, i32 0, i32 %add42, !taffo.info !41, !taffo.initweight !97
  %6 = load float, float* %arrayidx43, align 4, !taffo.info !41, !taffo.initweight !98
  %arrayidx44 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %arrayidx45 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx44, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %arrayidx46 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx45, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %7 = load float, float* %arrayidx46, align 4, !taffo.info !99, !taffo.initweight !98
  %mul47 = fmul float 2.000000e+00, %7, !taffo.info !101, !taffo.initweight !104, !taffo.constinfo !18
  %sub48 = fsub float %6, %mul47, !taffo.info !105, !taffo.initweight !104
  %arrayidx49 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %arrayidx50 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx49, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %sub51 = sub nsw i32 %k.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx52 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx50, i32 0, i32 %sub51, !taffo.info !41, !taffo.initweight !97
  %8 = load float, float* %arrayidx52, align 4, !taffo.info !41, !taffo.initweight !98
  %add53 = fadd float %sub48, %8, !taffo.info !107, !taffo.initweight !104
  %mul54 = fmul float 1.250000e-01, %add53, !taffo.info !120, !taffo.initweight !112, !taffo.constinfo !113
  %add55 = fadd float %add39, %mul54, !taffo.info !121, !taffo.initweight !119
  %arrayidx56 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %arrayidx57 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx56, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %arrayidx58 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx57, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  %9 = load float, float* %arrayidx58, align 4, !taffo.info !41, !taffo.initweight !98
  %add59 = fadd float %add55, %9, !taffo.info !123, !taffo.initweight !104
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0, !taffo.info !41, !taffo.initweight !67
  %arrayidx61 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx60, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !96
  %arrayidx62 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx61, i32 0, i32 %k.0, !taffo.info !41, !taffo.initweight !97
  store float %add59, float* %arrayidx62, align 4, !taffo.info !48, !taffo.initweight !98
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !94, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !125

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %inc64 = add nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !126

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !127

for.end68:                                        ; preds = %for.cond1
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %i.1 = phi i32 [ 1, %for.end68 ], [ %inc142, %for.inc141 ], !taffo.info !90
  %sub70 = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp71 = icmp slt i32 %i.1, %sub70, !taffo.info !60
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %j.1 = phi i32 [ 1, %for.body72 ], [ %inc139, %for.inc138 ], !taffo.info !90
  %sub74 = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp75 = icmp slt i32 %j.1, %sub74, !taffo.info !60
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %k.1 = phi i32 [ 1, %for.body76 ], [ %inc136, %for.inc135 ], !taffo.info !90
  %sub78 = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp79 = icmp slt i32 %k.1, %sub78, !taffo.info !60
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %add81 = add nsw i32 %i.1, 1, !taffo.info !94, !taffo.constinfo !21
  %arrayidx82 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %add81, !taffo.info !41, !taffo.initweight !67
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx82, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %arrayidx84 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx83, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %10 = load float, float* %arrayidx84, align 4, !taffo.info !41, !taffo.initweight !98
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %arrayidx86 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx85, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx86, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %11 = load float, float* %arrayidx87, align 4, !taffo.info !99, !taffo.initweight !98
  %mul88 = fmul float 2.000000e+00, %11, !taffo.info !101, !taffo.initweight !104, !taffo.constinfo !18
  %sub89 = fsub float %10, %mul88, !taffo.info !105, !taffo.initweight !104
  %sub90 = sub nsw i32 %i.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx91 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %sub90, !taffo.info !41, !taffo.initweight !67
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx91, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %arrayidx93 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %12 = load float, float* %arrayidx93, align 4, !taffo.info !41, !taffo.initweight !98
  %add94 = fadd float %sub89, %12, !taffo.info !107, !taffo.initweight !104
  %mul95 = fmul float 1.250000e-01, %add94, !taffo.info !109, !taffo.initweight !112, !taffo.constinfo !113
  %arrayidx96 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %add97 = add nsw i32 %j.1, 1, !taffo.info !94, !taffo.constinfo !21
  %arrayidx98 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx96, i32 0, i32 %add97, !taffo.info !41, !taffo.initweight !96
  %arrayidx99 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx98, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %13 = load float, float* %arrayidx99, align 4, !taffo.info !41, !taffo.initweight !98
  %arrayidx100 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %arrayidx101 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx100, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %arrayidx102 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx101, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %14 = load float, float* %arrayidx102, align 4, !taffo.info !99, !taffo.initweight !98
  %mul103 = fmul float 2.000000e+00, %14, !taffo.info !101, !taffo.initweight !104, !taffo.constinfo !18
  %sub104 = fsub float %13, %mul103, !taffo.info !105, !taffo.initweight !104
  %arrayidx105 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %sub106 = sub nsw i32 %j.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx107 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx105, i32 0, i32 %sub106, !taffo.info !41, !taffo.initweight !96
  %arrayidx108 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx107, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %15 = load float, float* %arrayidx108, align 4, !taffo.info !41, !taffo.initweight !98
  %add109 = fadd float %sub104, %15, !taffo.info !107, !taffo.initweight !104
  %mul110 = fmul float 1.250000e-01, %add109, !taffo.info !109, !taffo.initweight !112, !taffo.constinfo !113
  %add111 = fadd float %mul95, %mul110, !taffo.info !116, !taffo.initweight !119
  %arrayidx112 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %arrayidx113 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx112, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %add114 = add nsw i32 %k.1, 1, !taffo.info !94, !taffo.constinfo !21
  %arrayidx115 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx113, i32 0, i32 %add114, !taffo.info !41, !taffo.initweight !97
  %16 = load float, float* %arrayidx115, align 4, !taffo.info !41, !taffo.initweight !98
  %arrayidx116 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx116, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %arrayidx118 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %17 = load float, float* %arrayidx118, align 4, !taffo.info !99, !taffo.initweight !98
  %mul119 = fmul float 2.000000e+00, %17, !taffo.info !101, !taffo.initweight !104, !taffo.constinfo !18
  %sub120 = fsub float %16, %mul119, !taffo.info !105, !taffo.initweight !104
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %arrayidx122 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %sub123 = sub nsw i32 %k.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx124 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx122, i32 0, i32 %sub123, !taffo.info !41, !taffo.initweight !97
  %18 = load float, float* %arrayidx124, align 4, !taffo.info !41, !taffo.initweight !98
  %add125 = fadd float %sub120, %18, !taffo.info !107, !taffo.initweight !104
  %mul126 = fmul float 1.250000e-01, %add125, !taffo.info !120, !taffo.initweight !112, !taffo.constinfo !113
  %add127 = fadd float %add111, %mul126, !taffo.info !121, !taffo.initweight !119
  %arrayidx128 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %arrayidx129 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx128, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %arrayidx130 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx129, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  %19 = load float, float* %arrayidx130, align 4, !taffo.info !41, !taffo.initweight !98
  %add131 = fadd float %add127, %19, !taffo.info !123, !taffo.initweight !104
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.1, !taffo.info !41, !taffo.initweight !67
  %arrayidx133 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx132, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !96
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx133, i32 0, i32 %k.1, !taffo.info !41, !taffo.initweight !97
  store float %add131, float* %arrayidx134, align 4, !taffo.info !48, !taffo.initweight !98
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %inc136 = add nsw i32 %k.1, 1, !taffo.info !94, !taffo.constinfo !21
  br label %for.cond77, !llvm.loop !128

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %inc139 = add nsw i32 %j.1, 1, !taffo.info !94, !taffo.constinfo !21
  br label %for.cond73, !llvm.loop !129

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %inc142 = add nsw i32 %i.1, 1, !taffo.info !94, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !130

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %inc145 = add nsw i32 %t.0, 1, !taffo.info !94, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !131

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !132 !taffo.funinfo !133 !taffo.sourceFunction !51 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !134, !taffo.initweight !44
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !136, !taffo.initweight !49
  br i1 %cmp, label %for.body, label %for.end22, !taffo.info !134, !taffo.initweight !52

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !134, !taffo.initweight !44
  %cmp5 = icmp slt i32 %j.0, %n, !taffo.info !136, !taffo.initweight !49
  br i1 %cmp5, label %for.body6, label %for.end19, !taffo.info !134, !taffo.initweight !52

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !134, !taffo.initweight !44
  %cmp8 = icmp slt i32 %k.0, %n, !taffo.info !136, !taffo.initweight !49
  br i1 %cmp8, label %for.body9, label %for.end, !taffo.info !134, !taffo.initweight !52

for.body9:                                        ; preds = %for.cond7
  %add = add nsw i32 %i.0, %j.0, !taffo.info !137, !taffo.initweight !49
  %sub = sub nsw i32 %n, %k.0, !taffo.info !139, !taffo.initweight !49
  %add10 = add nsw i32 %add, %sub, !taffo.info !141, !taffo.initweight !52
  %conv = sitofp i32 %add10 to float, !taffo.info !143, !taffo.initweight !66
  %mul = fmul float %conv, 1.000000e+01, !taffo.info !145, !taffo.initweight !67, !taffo.constinfo !15
  %conv11 = sitofp i32 %n to float, !taffo.info !148
  %div = fdiv float %mul, %conv11, !taffo.info !150, !taffo.initweight !96
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0, !taffo.info !152, !taffo.initweight !49
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !152, !taffo.initweight !49
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.info !152, !taffo.initweight !49
  store float %div, float* %arrayidx13, align 4, !taffo.info !153, !taffo.initweight !52
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !152, !taffo.initweight !49
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !152, !taffo.initweight !49
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !152, !taffo.initweight !49
  store float %div, float* %arrayidx16, align 4, !taffo.info !153, !taffo.initweight !52
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.info !154, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !156

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !154, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !157

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !154, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !158

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_3d.3(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !159 !taffo.funinfo !160 !taffo.sourceFunction !54 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !60
  %cmp5 = icmp slt i32 %k.0, %p, !taffo.info !81
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p, !taffo.info !161
  %1 = mul nsw i32 %i.0, %0, !taffo.info !83
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1, !taffo.info !41, !taffo.initweight !96
  %2 = mul nsw i32 %j.0, %p, !taffo.info !83
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2, !taffo.info !41, !taffo.initweight !97
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0, !taffo.info !41, !taffo.initweight !98
  %3 = load float, float* %arrayidx8, align 4, !taffo.info !99, !taffo.initweight !104
  %conv = sitofp i32 %factor to float, !taffo.info !163
  %mul = fmul float %3, %conv, !taffo.info !165, !taffo.initweight !112
  %4 = mul nuw i32 %m, %p, !taffo.info !161
  %5 = mul nsw i32 %i.0, %4, !taffo.info !83
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5, !taffo.info !41, !taffo.initweight !96
  %6 = mul nsw i32 %j.0, %p, !taffo.info !83
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6, !taffo.info !41, !taffo.initweight !97
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0, !taffo.info !41, !taffo.initweight !98
  store float %mul, float* %arrayidx11, align 4, !taffo.info !48, !taffo.initweight !104
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !166

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !167

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !168

for.end17:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 5.200000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false}
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!35 = !{void (i32, i32, i32, float*, i32)* @scale_3d.3, void (i32, i32, i32, float*, i32)* @scale_3d.3}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{}
!40 = !{i1 true}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 26}
!43 = !{double 4.000000e+00, double 5.200000e+01}
!44 = !{i32 0}
!45 = !{!"A"}
!46 = !{!42, i1 false, i1 false, i2 -1}
!47 = !{i32 1}
!48 = !{i1 false, !43, i1 false, i2 -1}
!49 = !{i32 2}
!50 = !{i1 false, i1 false, i1 false, i1 false}
!51 = distinct !{null}
!52 = !{i32 3}
!53 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!54 = !{void (i32, i32, i32, float*, i32)* @scale_3d}
!55 = !{i1 false}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = distinct !{null}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 6.000000e+00}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 1.000000e+00}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 3.600000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 2.160000e+02}
!66 = !{i32 4}
!67 = !{i32 5}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 1.000000e+00, double 2.160000e+02}
!70 = distinct !{!70, !23}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 3.600000e+01}
!73 = distinct !{!73, !23}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 6.000000e+00}
!76 = distinct !{!76, !23}
!77 = !{i1 false, i1 false, i1 false}
!78 = !{i32 1, !79, i32 1, !0}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 5.000000e+00, double 5.000000e+00}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 1.000000e+00}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0.000000e+00, double 0.000000e+00}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = distinct !{!87, !23}
!88 = !{i32 -1, i32 -1, i32 2, i32 2}
!89 = !{i32 1, !16, i32 1, !79, i32 1, !41, i32 1, !41}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.000000e+00, double 1.200000e+01}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 4.000000e+00, double 4.000000e+00}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 2.000000e+00, double 1.200000e+01}
!96 = !{i32 6}
!97 = !{i32 7}
!98 = !{i32 8}
!99 = !{!100, !43, i1 false, i2 -1}
!100 = !{!"fixp", i32 32, i32 25}
!101 = !{!102, !103, i1 false, i2 -1}
!102 = !{!"fixp", i32 -32, i32 24}
!103 = !{double 8.000000e+00, double 1.040000e+02}
!104 = !{i32 9}
!105 = !{!102, !106, i1 false, i2 -1}
!106 = !{double -1.000000e+02, double 4.400000e+01}
!107 = !{!102, !108, i1 false, i2 -1}
!108 = !{double -9.600000e+01, double 9.600000e+01}
!109 = !{!110, !111, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 26}
!111 = !{double -1.200000e+01, double 1.200000e+01}
!112 = !{i32 10}
!113 = !{!114, i1 false}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 1.250000e-01, double 1.250000e-01}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 -32, i32 25}
!118 = !{double -2.400000e+01, double 2.400000e+01}
!119 = !{i32 11}
!120 = !{!117, !111, i1 false, i2 -1}
!121 = !{!102, !122, i1 false, i2 -1}
!122 = !{double -3.600000e+01, double 3.600000e+01}
!123 = !{!102, !124, i1 false, i2 -1}
!124 = !{double -3.200000e+01, double 8.800000e+01}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = !{i32 -1, i32 2, i32 2}
!133 = !{i32 1, !79, i32 1, !41, i32 1, !41}
!134 = !{i1 false, !135, i1 false, i2 -1}
!135 = !{double 0.000000e+00, double 8.000000e+01}
!136 = !{i1 false, !61, i1 false, i2 -1}
!137 = !{i1 false, !138, i1 false, i2 -1}
!138 = !{double 0.000000e+00, double 1.600000e+02}
!139 = !{i1 false, !140, i1 false, i2 -1}
!140 = !{double -7.500000e+01, double 5.000000e+00}
!141 = !{i1 false, !142, i1 false, i2 -1}
!142 = !{double -7.500000e+01, double 1.650000e+02}
!143 = !{!144, !142, i1 false, i2 -1}
!144 = !{!"fixp", i32 -32, i32 23}
!145 = !{!146, !147, i1 false, i2 -1}
!146 = !{!"fixp", i32 -32, i32 20}
!147 = !{double -7.500000e+02, double 1.650000e+03}
!148 = !{!149, !80, i1 false, i2 1}
!149 = !{!"fixp", i32 32, i32 29}
!150 = !{!146, !151, i1 false, i2 -1}
!151 = !{double -1.500000e+02, double 3.300000e+02}
!152 = !{!42, !43, i1 false, i2 1}
!153 = !{i1 false, i1 false, i1 false, i2 1}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 1.000000e+00, double 8.100000e+01}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = distinct !{!158, !23}
!159 = !{i32 -1, i32 -1, i32 -1, i32 3, i32 -1}
!160 = !{i32 1, !79, i32 1, !79, i32 1, !79, i32 1, !41, i32 1, !19}
!161 = !{i1 false, !162, i1 false, i2 0}
!162 = !{double 2.500000e+01, double 2.500000e+01}
!163 = !{!164, !20, i1 false, i2 1}
!164 = !{!"fixp", i32 32, i32 30}
!165 = !{!100, !103, i1 false, i2 -1}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, !23}
!168 = distinct !{!168, !23}
