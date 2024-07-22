; ModuleID = './build/bin/fixed/lu/24/lu-standard-1-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/lu.c"
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
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !28, !taffo.initweight !31, !taffo.target !32
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !33, !taffo.initweight !34, !taffo.target !32
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay), !taffo.info !35, !taffo.initweight !36, !taffo.constinfo !37, !taffo.target !32, !taffo.originalCall !38
  call void @timer_start(), !taffo.constinfo !39
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  call void @kernel_lu.1(i32 noundef 20, [20 x float]* noundef %arraydecay2), !taffo.info !35, !taffo.initweight !36, !taffo.constinfo !37, !taffo.target !32, !taffo.originalCall !40
  call void @timer_stop(), !taffo.constinfo !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !41
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !43
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !41
  %cmp4 = icmp sle i32 %j.0, %i.0, !taffo.info !43
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %0 = load float, float* %arrayidx6, align 4, !taffo.info !28, !taffo.initweight !45, !taffo.target !32
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx7, i32 0, i32 %j.0, !taffo.info !0
  store float %0, float* %arrayidx8, align 4, !taffo.info !35, !taffo.initweight !46, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !47, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !49

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !47, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !50

for.end11:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !37
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !51 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !43
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !43
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !54
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !56
  %add = add nsw i32 %mul, %j.0, !taffo.info !56
  %rem = srem i32 %add, 20, !taffo.info !56, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !54
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !37
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !58
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !59

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !60

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu.1(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !40 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !43
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !43
  %cmp2 = icmp slt i32 %j.0, %i.0, !taffo.info !56
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !43
  %cmp5 = icmp slt i32 %k.0, %j.0, !taffo.info !56
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !63
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !64
  %0 = load float, float* %arrayidx8, align 4, !taffo.info !28, !taffo.initweight !65
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0, !taffo.info !28, !taffo.initweight !63
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !64
  %1 = load float, float* %arrayidx10, align 4, !taffo.info !28, !taffo.initweight !65
  %mul = fmul float %0, %1, !taffo.info !66, !taffo.initweight !36
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !63
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !64
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !28, !taffo.initweight !65
  %sub = fsub float %2, %mul, !taffo.info !69, !taffo.initweight !36
  store float %sub, float* %arrayidx12, align 4, !taffo.info !71, !taffo.initweight !45
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !72

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0, !taffo.info !28, !taffo.initweight !63
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !64
  %3 = load float, float* %arrayidx14, align 4, !taffo.info !28, !taffo.initweight !65
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !63
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !64
  %4 = load float, float* %arrayidx16, align 4, !taffo.info !28, !taffo.initweight !65
  %div = fdiv float %4, %3, !taffo.info !73, !taffo.initweight !76
  store float %div, float* %arrayidx16, align 4, !taffo.info !35, !taffo.initweight !65
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !77

for.end19:                                        ; preds = %for.cond1
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !43
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !54
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc37, %for.inc36 ], !taffo.info !43
  %cmp24 = icmp slt i32 %k.1, %i.0, !taffo.info !56
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !63
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !64
  %5 = load float, float* %arrayidx29, align 4, !taffo.info !28, !taffo.initweight !65
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1, !taffo.info !28, !taffo.initweight !63
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !64
  %6 = load float, float* %arrayidx31, align 4, !taffo.info !28, !taffo.initweight !65
  %mul32 = fmul float %5, %6, !taffo.info !66, !taffo.initweight !36
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !63
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !64
  %7 = load float, float* %arrayidx34, align 4, !taffo.info !28, !taffo.initweight !65
  %sub35 = fsub float %7, %mul32, !taffo.info !69, !taffo.initweight !36
  store float %sub35, float* %arrayidx34, align 4, !taffo.info !71, !taffo.initweight !45
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %inc37 = add nsw i32 %k.1, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !78

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !79

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !38 {
entry:
  %B = alloca [20 x [20 x float]], align 4, !taffo.info !81, !taffo.initweight !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !83, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85, !taffo.initweight !36
  br i1 %cmp, label %for.body, label %for.end22, !taffo.info !86, !taffo.initweight !45

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !83, !taffo.initweight !31
  %cmp4 = icmp sle i32 %j.0, %i.0, !taffo.info !85, !taffo.initweight !36
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !86, !taffo.initweight !45

for.body5:                                        ; preds = %for.cond3
  %sub = sub nsw i32 0, %j.0, !taffo.info !86, !taffo.initweight !36, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !88, !taffo.initweight !45
  %conv = sitofp i32 %rem to float, !taffo.info !90, !taffo.initweight !46
  %conv6 = sitofp i32 %n to float, !taffo.info !92
  %div = fdiv float %conv, %conv6, !taffo.info !94, !taffo.initweight !63
  %add = fadd float %div, 1.000000e+00, !taffo.info !97, !taffo.initweight !63, !taffo.constinfo !99
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !100, !taffo.initweight !36
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !100, !taffo.initweight !36
  store float %add, float* %arrayidx7, align 4, !taffo.info !71, !taffo.initweight !45
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !101, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !103

for.end:                                          ; preds = %for.cond3
  %add8 = add nsw i32 %i.0, 1, !taffo.info !101, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %j.1 = phi i32 [ %add8, %for.end ], [ %inc16, %for.inc15 ], !taffo.info !104, !taffo.initweight !31
  %cmp10 = icmp slt i32 %j.1, %n, !taffo.info !85, !taffo.initweight !36
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.info !86, !taffo.initweight !45

for.body12:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !100, !taffo.initweight !36
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.1, !taffo.info !100, !taffo.initweight !36
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.info !71, !taffo.initweight !45, !taffo.constinfo !106
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %inc16 = add nsw i32 %j.1, 1, !taffo.info !107, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !109

for.end17:                                        ; preds = %for.cond9
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !100, !taffo.initweight !36
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.0, !taffo.info !100, !taffo.initweight !36
  store float 1.000000e+00, float* %arrayidx19, align 4, !taffo.info !71, !taffo.initweight !45, !taffo.constinfo !110
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !101, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !111

for.end22:                                        ; preds = %for.cond
  %B23 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.info !112, !taffo.initweight !34
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end22
  %r.0 = phi i32 [ 0, %for.end22 ], [ %inc38, %for.inc37 ], !taffo.info !43
  %cmp25 = icmp slt i32 %r.0, %n, !taffo.info !54
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.body27
  %s.0 = phi i32 [ 0, %for.body27 ], [ %inc35, %for.inc34 ], !taffo.info !43
  %cmp29 = icmp slt i32 %s.0, %n, !taffo.info !54
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.0, !taffo.info !81, !taffo.initweight !34
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i32 0, i32 %s.0, !taffo.info !81, !taffo.initweight !36
  store float 0.000000e+00, float* %arrayidx33, align 4, !taffo.info !71, !taffo.initweight !45, !taffo.constinfo !106
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %inc35 = add nsw i32 %s.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !113

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %inc38 = add nsw i32 %r.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !114

for.end39:                                        ; preds = %for.cond24
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc65, %for.end39
  %t.0 = phi i32 [ 0, %for.end39 ], [ %inc66, %for.inc65 ], !taffo.info !43
  %cmp41 = icmp slt i32 %t.0, %n, !taffo.info !54
  br i1 %cmp41, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond40
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body43
  %r.1 = phi i32 [ 0, %for.body43 ], [ %inc63, %for.inc62 ], !taffo.info !43
  %cmp45 = icmp slt i32 %r.1, %n, !taffo.info !54
  br i1 %cmp45, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body47
  %s.1 = phi i32 [ 0, %for.body47 ], [ %inc60, %for.inc59 ], !taffo.info !43
  %cmp49 = icmp slt i32 %s.1, %n, !taffo.info !54
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1, !taffo.info !28, !taffo.initweight !63
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %t.0, !taffo.info !28, !taffo.initweight !64
  %0 = load float, float* %arrayidx53, align 4, !taffo.info !28, !taffo.initweight !65
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1, !taffo.info !28, !taffo.initweight !63
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx54, i32 0, i32 %t.0, !taffo.info !28, !taffo.initweight !64
  %1 = load float, float* %arrayidx55, align 4, !taffo.info !28, !taffo.initweight !65
  %mul = fmul float %0, %1, !taffo.info !115, !taffo.initweight !76
  %arrayidx56 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.1, !taffo.info !81, !taffo.initweight !34
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx56, i32 0, i32 %s.1, !taffo.info !81, !taffo.initweight !36
  %2 = load float, float* %arrayidx57, align 4, !taffo.info !116, !taffo.initweight !45
  %add58 = fadd float %2, %mul, !taffo.info !118, !taffo.initweight !46
  store float %add58, float* %arrayidx57, align 4, !taffo.info !71, !taffo.initweight !45
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %inc60 = add nsw i32 %s.1, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !119

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %inc63 = add nsw i32 %r.1, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !120

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %inc66 = add nsw i32 %t.0, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !121

for.end67:                                        ; preds = %for.cond40
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %for.end67
  %r.2 = phi i32 [ 0, %for.end67 ], [ %inc84, %for.inc83 ], !taffo.info !43
  %cmp69 = icmp slt i32 %r.2, %n, !taffo.info !54
  br i1 %cmp69, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond68
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.body71
  %s.2 = phi i32 [ 0, %for.body71 ], [ %inc81, %for.inc80 ], !taffo.info !43
  %cmp73 = icmp slt i32 %s.2, %n, !taffo.info !54
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %arrayidx76 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.2, !taffo.info !81, !taffo.initweight !34
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.2, !taffo.info !81, !taffo.initweight !36
  %3 = load float, float* %arrayidx77, align 4, !taffo.info !81, !taffo.initweight !45
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2, !taffo.info !28, !taffo.initweight !63
  %arrayidx79 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx78, i32 0, i32 %s.2, !taffo.info !28, !taffo.initweight !64
  store float %3, float* %arrayidx79, align 4, !taffo.info !71, !taffo.initweight !46
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %inc81 = add nsw i32 %s.2, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond72, !llvm.loop !122

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %inc84 = add nsw i32 %r.2, 1, !taffo.info !54, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !123

for.end85:                                        ; preds = %for.cond68
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 8.172500e+00}
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
!29 = !{!"fixp", i32 32, i32 28}
!30 = !{double 1.000000e-01, double 8.172500e+00}
!31 = !{i32 0}
!32 = !{!"A"}
!33 = !{!29, i1 false, i1 false, i2 -1}
!34 = !{i32 1}
!35 = !{i1 false, !30, i1 false, i2 -1}
!36 = !{i32 2}
!37 = !{i1 false, i1 false, i1 false}
!38 = distinct !{null}
!39 = !{i1 false}
!40 = distinct !{null}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 0.000000e+00, double 2.100000e+01}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 0.000000e+00, double 1.000000e+00}
!45 = !{i32 3}
!46 = !{i32 4}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.000000e+00, double 2.100000e+01}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = !{i32 1, !52, i32 1, !0}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 2.000000e+01, double 2.000000e+01}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 1.000000e+00}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 0.000000e+00}
!58 = !{i1 false, i1 false, i1 false, i1 false}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = !{i32 -1, i32 2}
!62 = !{i32 1, !52, i32 1, !28}
!63 = !{i32 5}
!64 = !{i32 6}
!65 = !{i32 7}
!66 = !{!67, !68, i1 false, i2 1}
!67 = !{!"fixp", i32 -32, i32 24}
!68 = !{double 0x3F847AE147AE147C, double 0x4050B28B5DCC63F1}
!69 = !{!67, !70, i1 false, i2 1}
!70 = !{double 0xC050AC24F765FD8B, double 8.162500e+00}
!71 = !{i1 false, i1 false, i1 false, i2 1}
!72 = distinct !{!72, !23}
!73 = !{!74, !75, i1 false, i2 -1}
!74 = !{!"fixp", i32 32, i32 25}
!75 = !{double 0x3F890F454E3BAC5E, double 8.172500e+01}
!76 = !{i32 8}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = !{!74, !82, i1 false, i2 1}
!82 = !{double 0.000000e+00, double 0x4050B28B5DCC63F1}
!83 = !{i1 false, !84, i1 false, i2 1}
!84 = !{double -2.000000e+01, double 2.100000e+01}
!85 = !{i1 false, !44, i1 false, i2 1}
!86 = !{i1 false, !87, i1 false, i2 1}
!87 = !{double -2.000000e+01, double 2.000000e+01}
!88 = !{i1 false, !89, i1 false, i2 1}
!89 = !{double -1.900000e+01, double 1.900000e+01}
!90 = !{!91, !89, i1 false, i2 1}
!91 = !{!"fixp", i32 -32, i32 26}
!92 = !{!93, !53, i1 false, i2 1}
!93 = !{!"fixp", i32 32, i32 27}
!94 = !{!95, !96, i1 false, i2 1}
!95 = !{!"fixp", i32 -32, i32 29}
!96 = !{double 0xBFEE666666666666, double 0x3FEE666666666666}
!97 = !{!95, !98, i1 false, i2 1}
!98 = !{double 0x3FA99999999999A0, double 1.950000e+00}
!99 = !{i1 false, !54}
!100 = !{!29, !30, i1 false, i2 1}
!101 = !{i1 false, !102, i1 false, i2 1}
!102 = !{double -1.900000e+01, double 2.100000e+01}
!103 = distinct !{!103, !23}
!104 = !{i1 false, !105, i1 false, i2 1}
!105 = !{double -2.000000e+01, double 2.200000e+01}
!106 = !{!56, i1 false}
!107 = !{i1 false, !108, i1 false, i2 1}
!108 = !{double -1.900000e+01, double 2.200000e+01}
!109 = distinct !{!109, !23}
!110 = !{!54, i1 false}
!111 = distinct !{!111, !23}
!112 = !{!74, i1 false, i1 false, i2 1}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = !{!74, !68, i1 false, i2 -1}
!116 = !{!117, !57, i1 false, i2 1}
!117 = !{!"fixp", i32 32, i32 32}
!118 = !{!74, !68, i1 false, i2 1}
!119 = distinct !{!119, !23}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = distinct !{!123, !23}
