; ModuleID = './build/bin/fixed/atax/11/atax-standard-1-fixed-11.out.ll.3.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %A = alloca [20 x [22 x float]], align 4, !taffo.info !28, !taffo.initweight !31
  %x = alloca [22 x float], align 4, !taffo.info !32, !taffo.initweight !31
  %y = alloca [22 x float], align 4, !taffo.info !35, !taffo.initweight !31, !taffo.target !37
  %tmp = alloca [20 x float], align 4, !taffo.info !38, !taffo.initweight !31
  %A1 = bitcast [20 x [22 x float]]* %A to i8*, !taffo.info !41, !taffo.initweight !42
  %x2 = bitcast [22 x float]* %x to i8*, !taffo.info !43, !taffo.initweight !42
  %y3 = bitcast [22 x float]* %y to i8*, !taffo.info !44, !taffo.initweight !42, !taffo.target !37
  %tmp4 = bitcast [20 x float]* %tmp to i8*, !taffo.info !45, !taffo.initweight !42
  %arraydecay = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !42
  %arraydecay5 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.info !32, !taffo.initweight !42
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !35, !taffo.initweight !42, !taffo.target !37
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.info !38, !taffo.initweight !42
  call void @init_array.2(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay, float* noundef %arraydecay5, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.info !46, !taffo.initweight !47, !taffo.constinfo !48, !taffo.originalCall !49
  call void @timer_start(), !taffo.constinfo !50
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !42
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.info !32, !taffo.initweight !42
  %arraydecay10 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !35, !taffo.initweight !42, !taffo.target !37
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.info !38, !taffo.initweight !42
  call void @kernel_atax.1(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.info !46, !taffo.initweight !47, !taffo.constinfo !48, !taffo.originalCall !51
  call void @timer_stop(), !taffo.constinfo !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 %i.0, !taffo.info !35, !taffo.initweight !42, !taffo.target !37
  %0 = load float, float* %arrayidx, align 4, !taffo.info !35, !taffo.initweight !47, !taffo.target !37
  %arrayidx12 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %0, float* %arrayidx12, align 4, !taffo.info !56, !taffo.initweight !57, !taffo.target !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !58, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !61
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !25 !taffo.funinfo !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !65
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !67, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !65
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !61
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.1(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !71 !taffo.funinfo !72 !taffo.sourceFunction !51 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !65
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !35, !taffo.initweight !75
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !76, !taffo.initweight !75, !taffo.constinfo !77
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !54
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !65
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !38, !taffo.initweight !75
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !76, !taffo.initweight !75, !taffo.constinfo !77
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !54
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !65
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !38, !taffo.initweight !75
  %0 = load float, float* %arrayidx8, align 4, !taffo.info !38, !taffo.initweight !79
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.info !28, !taffo.initweight !75
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !79
  %1 = load float, float* %arrayidx10, align 4, !taffo.info !28, !taffo.initweight !80
  %arrayidx11 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !32, !taffo.initweight !75
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !32, !taffo.initweight !79
  %mul = fmul float %1, %2, !taffo.info !81, !taffo.initweight !80
  %add = fadd float %0, %mul, !taffo.info !83, !taffo.initweight !80
  %arrayidx12 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !38, !taffo.initweight !75
  store float %add, float* %arrayidx12, align 4, !taffo.info !85, !taffo.initweight !79
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !86

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !54
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !65
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !35, !taffo.initweight !75
  %3 = load float, float* %arrayidx19, align 4, !taffo.info !35, !taffo.initweight !79
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.info !28, !taffo.initweight !75
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !79
  %4 = load float, float* %arrayidx21, align 4, !taffo.info !28, !taffo.initweight !80
  %arrayidx22 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !38, !taffo.initweight !75
  %5 = load float, float* %arrayidx22, align 4, !taffo.info !38, !taffo.initweight !79
  %mul23 = fmul float %4, %5, !taffo.info !87, !taffo.initweight !80
  %add24 = fadd float %3, %mul23, !taffo.info !89, !taffo.initweight !80
  %arrayidx25 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !35, !taffo.initweight !75
  store float %add24, float* %arrayidx25, align 4, !taffo.info !56, !taffo.initweight !79
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !91

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !92

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !71 !taffo.funinfo !72 !taffo.sourceFunction !49 {
entry:
  %conv = sitofp i32 %n to float, !taffo.info !93, !taffo.initweight !47
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !95, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97, !taffo.initweight !47
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !95, !taffo.initweight !57

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.info !98, !taffo.initweight !47
  %div = fdiv float %conv5, %conv, !taffo.info !99, !taffo.initweight !47
  %add = fadd float 1.000000e+00, %div, !taffo.info !100, !taffo.initweight !57, !taffo.constinfo !102
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !103, !taffo.initweight !47
  store float %add, float* %arrayidx, align 4, !taffo.info !76, !taffo.initweight !57
  %arrayidx6 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !104, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.info !76, !taffo.initweight !57, !taffo.constinfo !77
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !106

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !95, !taffo.initweight !31
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.info !97, !taffo.initweight !47
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.info !95, !taffo.initweight !57

for.body10:                                       ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !107, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.info !76, !taffo.initweight !57, !taffo.constinfo !77
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.info !95, !taffo.initweight !31
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.info !97, !taffo.initweight !47
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.info !95, !taffo.initweight !57

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.info !108, !taffo.initweight !47
  %rem = srem i32 %add16, %n, !taffo.info !110, !taffo.initweight !57
  %conv17 = sitofp i32 %rem to float, !taffo.info !112, !taffo.initweight !113
  %mul = mul nsw i32 5, %m, !taffo.info !114, !taffo.constinfo !21
  %conv18 = sitofp i32 %mul to float, !taffo.info !116
  %div19 = fdiv float %conv17, %conv18, !taffo.info !28, !taffo.initweight !75
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.info !118, !taffo.initweight !47
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.0, !taffo.info !118, !taffo.initweight !47
  store float %div19, float* %arrayidx21, align 4, !taffo.info !76, !taffo.initweight !57
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !119

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.info !105, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !120

for.end27:                                        ; preds = %for.cond7
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 7.691500e+00}
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
!12 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
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
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 31}
!30 = !{double 0.000000e+00, double 2.100000e-01}
!31 = !{i32 0}
!32 = !{!33, !34, i1 false, i2 -1}
!33 = !{!"fixp", i32 32, i32 30}
!34 = !{double 1.000000e+00, double 0x3FFF45D0FA58F712}
!35 = !{!36, !1, i1 false, i2 -1}
!36 = !{!"fixp", i32 32, i32 28}
!37 = !{!"y"}
!38 = !{!39, !40, i1 false, i2 -1}
!39 = !{!"fixp", i32 32, i32 29}
!40 = !{double 0.000000e+00, double 3.815000e+00}
!41 = !{!29, i1 false, i1 false, i2 -1}
!42 = !{i32 1}
!43 = !{!33, i1 false, i1 false, i2 -1}
!44 = !{!36, i1 false, i1 false, i2 -1}
!45 = !{!39, i1 false, i1 false, i2 -1}
!46 = !{i1 false, !30, i1 false, i2 -1}
!47 = !{i32 2}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = distinct !{null}
!50 = !{i1 false}
!51 = distinct !{null}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 2.300000e+01}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 1.000000e+00}
!56 = !{i1 false, !1, i1 false, i2 -1}
!57 = !{i32 3}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 2.300000e+01}
!60 = distinct !{!60, !23}
!61 = !{i1 false, i1 false, i1 false}
!62 = !{i32 1, !63, i32 1, !0}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 2.200000e+01, double 2.200000e+01}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 1.000000e+00}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 0.000000e+00}
!69 = !{i1 false, i1 false, i1 false, i1 false}
!70 = distinct !{!70, !23}
!71 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!72 = !{i32 1, !73, i32 1, !63, i32 1, !28, i32 1, !32, i32 1, !35, i32 1, !38}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 2.000000e+01, double 2.000000e+01}
!75 = !{i32 5}
!76 = !{i1 false, i1 false, i1 false, i2 1}
!77 = !{!67, i1 false}
!78 = distinct !{!78, !23}
!79 = !{i32 6}
!80 = !{i32 7}
!81 = !{!39, !82, i1 false, i2 -1}
!82 = !{double 0.000000e+00, double 0x3FDA44E2BDCFD9C7}
!83 = !{!39, !84, i1 false, i2 -1}
!84 = !{double 0.000000e+00, double 0x4010E6DD8805F35F}
!85 = !{i1 false, !40, i1 false, i2 -1}
!86 = distinct !{!86, !23}
!87 = !{!39, !88, i1 false, i2 -1}
!88 = !{double 0.000000e+00, double 0x3FE9A305532617C1}
!89 = !{!36, !90, i1 false, i2 -1}
!90 = !{double 0.000000e+00, double 8.492650e+00}
!91 = distinct !{!91, !23}
!92 = distinct !{!92, !23}
!93 = !{!94, !64, i1 false, i2 1}
!94 = !{!"fixp", i32 32, i32 27}
!95 = !{i1 false, !96, i1 false, i2 -1}
!96 = !{double 0.000000e+00, double 2.200000e+01}
!97 = !{i1 false, !55, i1 false, i2 -1}
!98 = !{!94, !96, i1 false, i2 -1}
!99 = !{!33, !55, i1 false, i2 1}
!100 = !{!33, !101, i1 false, i2 1}
!101 = !{double 1.000000e+00, double 2.000000e+00}
!102 = !{!65, i1 false}
!103 = !{!33, !34, i1 false, i2 1}
!104 = !{!36, !1, i1 false, i2 1}
!105 = !{i1 false, !59, i1 false, i2 -1}
!106 = distinct !{!106, !23}
!107 = !{!39, !40, i1 false, i2 1}
!108 = !{i1 false, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 4.400000e+01}
!110 = !{i1 false, !111, i1 false, i2 -1}
!111 = !{double 0.000000e+00, double 2.100000e+01}
!112 = !{!94, !111, i1 false, i2 -1}
!113 = !{i32 4}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 1.000000e+02, double 1.000000e+02}
!116 = !{!117, !115, i1 false, i2 1}
!117 = !{!"fixp", i32 32, i32 25}
!118 = !{!29, !30, i1 false, i2 1}
!119 = distinct !{!119, !23}
!120 = distinct !{!120, !23}
