; ModuleID = './build/bin/fixed/seidel-2d/8/seidel-2d-standard-4-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.equivalentChild !31 {
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
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !33

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !34 !taffo.funinfo !35 {
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
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !41, !taffo.initweight !44, !taffo.target !45
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !46, !taffo.initweight !47, !taffo.target !45
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay), !taffo.info !48, !taffo.initweight !49, !taffo.constinfo !50, !taffo.target !45, !taffo.originalCall !51
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  %0 = bitcast [20 x float]* %arraydecay2 to float*, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  call void @scale_2d.3(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 4), !taffo.info !48, !taffo.initweight !52, !taffo.constinfo !53, !taffo.target !45, !taffo.originalCall !54
  call void @timer_start(), !taffo.constinfo !55
  %arraydecay3 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  call void @kernel_seidel_2d.1(i32 noundef 10, i32 noundef 20, [20 x float]* noundef %arraydecay3), !taffo.info !48, !taffo.initweight !49, !taffo.constinfo !56, !taffo.target !45, !taffo.originalCall !57
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !62
  %cmp5 = icmp slt i32 %j.0, 20, !taffo.info !60
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.info !41, !taffo.initweight !47, !taffo.target !45
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  %1 = load float, float* %arrayidx7, align 4, !taffo.info !41, !taffo.initweight !52, !taffo.target !45
  %arrayidx8 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx9, align 4, !taffo.info !48, !taffo.initweight !64, !taffo.target !45
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !67

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !68, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !70

for.end12:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !50
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !76
  %add = add nsw i32 %mul, %j.0, !taffo.info !76
  %rem = srem i32 %add, 20, !taffo.info !76, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !74
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !50
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !56
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !78

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !79

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.1(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.sourceFunction !57 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ], !taffo.info !60
  %sub = sub nsw i32 %tsteps, 1, !taffo.info !82, !taffo.constinfo !21
  %cmp = icmp sle i32 %t.0, %sub, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc53, %for.inc52 ], !taffo.info !84
  %sub2 = sub nsw i32 %n, 2, !taffo.info !86, !taffo.constinfo !21
  %cmp3 = icmp sle i32 %i.0, %sub2, !taffo.info !74
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ], !taffo.info !84
  %sub6 = sub nsw i32 %n, 2, !taffo.info !86, !taffo.constinfo !21
  %cmp7 = icmp sle i32 %j.0, %sub6, !taffo.info !74
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %sub10 = sub nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub10, !taffo.info !41, !taffo.initweight !88
  %sub11 = sub nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %sub11, !taffo.info !41, !taffo.initweight !89
  %0 = load float, float* %arrayidx12, align 4, !taffo.info !90, !taffo.initweight !92
  %sub13 = sub nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub13, !taffo.info !41, !taffo.initweight !88
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !89
  %1 = load float, float* %arrayidx15, align 4, !taffo.info !90, !taffo.initweight !92
  %add = fadd float %0, %1, !taffo.info !93, !taffo.initweight !95
  %sub16 = sub nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub16, !taffo.info !41, !taffo.initweight !88
  %add18 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i32 0, i32 %add18, !taffo.info !41, !taffo.initweight !89
  %2 = load float, float* %arrayidx19, align 4, !taffo.info !90, !taffo.initweight !92
  %add20 = fadd float %add, %2, !taffo.info !96, !taffo.initweight !95
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !88
  %sub22 = sub nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i32 0, i32 %sub22, !taffo.info !41, !taffo.initweight !89
  %3 = load float, float* %arrayidx23, align 4, !taffo.info !99, !taffo.initweight !92
  %add24 = fadd float %add20, %3, !taffo.info !100, !taffo.initweight !49
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !88
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !89
  %4 = load float, float* %arrayidx27, align 4, !taffo.info !90, !taffo.initweight !92
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !88
  %add29 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %add29, !taffo.info !41, !taffo.initweight !89
  %5 = load float, float* %arrayidx30, align 4, !taffo.info !90, !taffo.initweight !92
  %add31 = fadd float %4, %5, !taffo.info !93, !taffo.initweight !95
  %add32 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add32, !taffo.info !41, !taffo.initweight !88
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %sub34, !taffo.info !41, !taffo.initweight !89
  %6 = load float, float* %arrayidx35, align 4, !taffo.info !90, !taffo.initweight !92
  %add36 = fadd float %add31, %6, !taffo.info !96, !taffo.initweight !95
  %add37 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add37, !taffo.info !41, !taffo.initweight !88
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !89
  %7 = load float, float* %arrayidx39, align 4, !taffo.info !99, !taffo.initweight !92
  %add40 = fadd float %add36, %7, !taffo.info !103, !taffo.initweight !95
  %add41 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add41, !taffo.info !41, !taffo.initweight !88
  %add43 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i32 0, i32 %add43, !taffo.info !41, !taffo.initweight !89
  %8 = load float, float* %arrayidx44, align 4, !taffo.info !99, !taffo.initweight !92
  %add45 = fadd float %add40, %8, !taffo.info !104, !taffo.initweight !49
  %add47 = fadd float %add24, %add45, !taffo.info !106, !taffo.initweight !49
  %div49 = fdiv float %add47, 9.000000e+00, !taffo.info !108, !taffo.initweight !49, !taffo.constinfo !109
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !88
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !89
  store float %div49, float* %arrayidx51, align 4, !taffo.info !110, !taffo.initweight !49
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !111

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !112

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !113

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !114 !taffo.funinfo !115 !taffo.sourceFunction !51 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !116, !taffo.initweight !44
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !118, !taffo.initweight !49
  br i1 %cmp, label %for.body, label %for.end12, !taffo.info !116, !taffo.initweight !52

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !116, !taffo.initweight !44
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !118, !taffo.initweight !49
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !116, !taffo.initweight !52

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.info !119, !taffo.initweight !49
  %add = add nsw i32 %j.0, 2, !taffo.info !121, !taffo.initweight !49, !taffo.constinfo !21
  %conv6 = sitofp i32 %add to float, !taffo.info !123, !taffo.initweight !52
  %mul = fmul float %conv, %conv6, !taffo.info !124, !taffo.initweight !52
  %add7 = fadd float %mul, 2.000000e+00, !taffo.info !127, !taffo.initweight !64, !taffo.constinfo !129
  %conv8 = sitofp i32 %n to float, !taffo.info !130
  %div = fdiv float %add7, %conv8, !taffo.info !131, !taffo.initweight !88
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !108, !taffo.initweight !49
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !108, !taffo.initweight !49
  store float %div, float* %arrayidx9, align 4, !taffo.info !110, !taffo.initweight !52
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !133, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !135

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !133, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !136

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !137 !taffo.funinfo !138 !taffo.sourceFunction !54 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !41, !taffo.initweight !89
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !41, !taffo.initweight !92
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !99, !taffo.initweight !95
  %conv = sitofp i32 %factor to float, !taffo.info !141
  %mul = fmul float %1, %conv, !taffo.info !103, !taffo.initweight !143
  %2 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !41, !taffo.initweight !89
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !41, !taffo.initweight !92
  store float %mul, float* %arrayidx6, align 4, !taffo.info !48, !taffo.initweight !95
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !144

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !145

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40540CCCC0379314}
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
!31 = !{void (i32, i32, float*, i32)* @scale_2d.3}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{}
!40 = !{i1 true}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 25}
!43 = !{double 4.000000e-01, double 0x40540CCCC0379314}
!44 = !{i32 0}
!45 = !{!"A"}
!46 = !{!42, i1 false, i1 false, i2 -1}
!47 = !{i32 1}
!48 = !{i1 false, !43, i1 false, i2 -1}
!49 = !{i32 2}
!50 = !{i1 false, i1 false, i1 false}
!51 = distinct !{null}
!52 = !{i32 3}
!53 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!54 = !{void (i32, i32, float*, i32)* @scale_2d}
!55 = !{i1 false}
!56 = !{i1 false, i1 false, i1 false, i1 false}
!57 = distinct !{null}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 2.100000e+01}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 1.000000e+00}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 4.410000e+02}
!64 = !{i32 4}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 4.410000e+02}
!67 = distinct !{!67, !23}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 1.000000e+00, double 2.100000e+01}
!70 = distinct !{!70, !23}
!71 = !{i32 1, !72, i32 1, !0}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 2.000000e+01, double 2.000000e+01}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 0.000000e+00}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = !{i32 -1, i32 -1, i32 2}
!81 = !{i32 1, !16, i32 1, !72, i32 1, !41}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 9.000000e+00, double 9.000000e+00}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.000000e+00, double 2.000000e+00}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.800000e+01, double 1.800000e+01}
!88 = !{i32 5}
!89 = !{i32 6}
!90 = !{!91, !43, i1 false, i2 -1}
!91 = !{!"fixp", i32 32, i32 24}
!92 = !{i32 7}
!93 = !{!91, !94, i1 false, i2 -1}
!94 = !{double 8.000000e-01, double 0x40640CCCC0379314}
!95 = !{i32 8}
!96 = !{!97, !98, i1 false, i2 -1}
!97 = !{!"fixp", i32 32, i32 23}
!98 = !{double 0x3FF3333333333334, double 0x406E133320535C9E}
!99 = !{!97, !43, i1 false, i2 -1}
!100 = !{!101, !102, i1 false, i2 1}
!101 = !{!"fixp", i32 32, i32 22}
!102 = !{double 1.600000e+00, double 0x40740CCCC0379314}
!103 = !{!97, !102, i1 false, i2 -1}
!104 = !{!101, !105, i1 false, i2 1}
!105 = !{double 2.000000e+00, double 0x40790FFFF04577D9}
!106 = !{!101, !107, i1 false, i2 1}
!107 = !{double 3.600000e+00, double 0x40868E66583E8576}
!108 = !{!42, !43, i1 false, i2 1}
!109 = !{i1 false, !82}
!110 = !{i1 false, i1 false, i1 false, i2 1}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = !{i32 -1, i32 2}
!115 = !{i32 1, !72, i32 1, !41}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double -2.000000e+01, double 2.000000e+01}
!118 = !{i1 false, !61, i1 false, i2 -1}
!119 = !{!120, !117, i1 false, i2 -1}
!120 = !{!"fixp", i32 -32, i32 26}
!121 = !{i1 false, !122, i1 false, i2 -1}
!122 = !{double -1.800000e+01, double 2.200000e+01}
!123 = !{!120, !122, i1 false, i2 -1}
!124 = !{!125, !126, i1 false, i2 -1}
!125 = !{!"fixp", i32 -32, i32 22}
!126 = !{double -4.400000e+02, double 4.400000e+02}
!127 = !{!125, !128, i1 false, i2 -1}
!128 = !{double -4.380000e+02, double 4.420000e+02}
!129 = !{i1 false, !19}
!130 = !{!120, !73, i1 false, i2 1}
!131 = !{!120, !132, i1 false, i2 -1}
!132 = !{double -2.190000e+01, double 2.210000e+01}
!133 = !{i1 false, !134, i1 false, i2 -1}
!134 = !{double -1.900000e+01, double 2.100000e+01}
!135 = distinct !{!135, !23}
!136 = distinct !{!136, !23}
!137 = !{i32 -1, i32 -1, i32 3, i32 -1}
!138 = !{i32 1, !72, i32 1, !72, i32 1, !41, i32 1, !139}
!139 = !{i1 false, !140, i1 false, i2 0}
!140 = !{double 4.000000e+00, double 4.000000e+00}
!141 = !{!142, !140, i1 false, i2 1}
!142 = !{!"fixp", i32 32, i32 29}
!143 = !{i32 9}
!144 = distinct !{!144, !23}
!145 = distinct !{!145, !23}
