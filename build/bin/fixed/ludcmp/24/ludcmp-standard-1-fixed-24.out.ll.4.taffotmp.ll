; ModuleID = './build/bin/fixed/ludcmp/24/ludcmp-standard-1-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !28, !taffo.initweight !31
  %B = alloca [20 x [20 x float]], align 4, !taffo.info !32, !taffo.initweight !31
  %b = alloca [20 x float], align 4, !taffo.info !34, !taffo.initweight !31
  %x = alloca [20 x float], align 4, !taffo.info !37, !taffo.initweight !31, !taffo.target !39
  %y = alloca [20 x float], align 4, !taffo.info !40, !taffo.initweight !31
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !42, !taffo.initweight !43
  %B2 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.info !42, !taffo.initweight !43
  %b3 = bitcast [20 x float]* %b to i8*, !taffo.info !44, !taffo.initweight !43
  %x4 = bitcast [20 x float]* %x to i8*, !taffo.info !45, !taffo.initweight !43, !taffo.target !39
  %y5 = bitcast [20 x float]* %y to i8*, !taffo.info !44, !taffo.initweight !43
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !43
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.info !32, !taffo.initweight !43
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43, !taffo.target !39
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.info !46, !taffo.initweight !47, !taffo.constinfo !48, !taffo.originalCall !49
  call void @timer_start(), !taffo.constinfo !50
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !43
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43, !taffo.target !39
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @kernel_ludcmp.1(i32 noundef 20, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13), !taffo.info !46, !taffo.initweight !47, !taffo.constinfo !51, !taffo.originalCall !52
  call void @timer_stop(), !taffo.constinfo !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.info !37, !taffo.initweight !43, !taffo.target !39
  %0 = load float, float* %arrayidx, align 4, !taffo.info !37, !taffo.initweight !47, !taffo.target !39
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %0, float* %arrayidx14, align 4, !taffo.info !57, !taffo.initweight !58, !taffo.target !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0)), !taffo.constinfo !62
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !25 !taffo.funinfo !63 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !68, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !66
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !62
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !70
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.1(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !72 !taffo.funinfo !73 !taffo.sourceFunction !52 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !55
  %cmp3 = icmp slt i32 %j.0, %i.0, !taffo.info !68
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !75
  %0 = load float, float* %arrayidx5, align 4, !taffo.info !76, !taffo.initweight !47
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ], !taffo.info !55
  %w.0 = phi float [ %0, %for.body4 ], [ %sub, %for.inc ], !taffo.info !79, !taffo.initweight !31
  %cmp7 = icmp slt i32 %k.0, %j.0, !taffo.info !68
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %k.0, !taffo.info !28, !taffo.initweight !75
  %1 = load float, float* %arrayidx10, align 4, !taffo.info !28, !taffo.initweight !81
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !75
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !28, !taffo.initweight !81
  %mul = fmul float %1, %2, !taffo.info !82, !taffo.initweight !85
  %sub = fsub float %w.0, %mul, !taffo.info !86, !taffo.initweight !47
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !88

for.end:                                          ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !75
  %3 = load float, float* %arrayidx14, align 4, !taffo.info !28, !taffo.initweight !81
  %div = fdiv float %w.0, %3, !taffo.info !89, !taffo.initweight !47
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !75
  store float %div, float* %arrayidx16, align 4, !taffo.info !92, !taffo.initweight !58
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !93

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !55
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !66
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !75
  %4 = load float, float* %arrayidx24, align 4, !taffo.info !76, !taffo.initweight !47
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ], !taffo.info !55
  %w.1 = phi float [ %4, %for.body22 ], [ %sub33, %for.inc34 ], !taffo.info !79, !taffo.initweight !31
  %cmp26 = icmp slt i32 %k.1, %i.0, !taffo.info !68
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1, !taffo.info !28, !taffo.initweight !75
  %5 = load float, float* %arrayidx29, align 4, !taffo.info !28, !taffo.initweight !81
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1, !taffo.info !28, !taffo.initweight !74
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !75
  %6 = load float, float* %arrayidx31, align 4, !taffo.info !28, !taffo.initweight !81
  %mul32 = fmul float %5, %6, !taffo.info !82, !taffo.initweight !85
  %sub33 = fsub float %w.1, %mul32, !taffo.info !86, !taffo.initweight !47
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond25, !llvm.loop !94

for.end36:                                        ; preds = %for.cond25
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !75
  store float %w.1, float* %arrayidx38, align 4, !taffo.info !92, !taffo.initweight !47
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !95

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !96

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ], !taffo.info !55
  %cmp46 = icmp slt i32 %i.1, %n, !taffo.info !66
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48 = getelementptr inbounds float, float* %b, i32 %i.1, !taffo.info !34, !taffo.initweight !74
  %7 = load float, float* %arrayidx48, align 4, !taffo.info !76, !taffo.initweight !47
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ], !taffo.info !55
  %w.2 = phi float [ %7, %for.body47 ], [ %sub56, %for.inc57 ], !taffo.info !76, !taffo.initweight !31
  %cmp50 = icmp slt i32 %j.2, %i.1, !taffo.info !68
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !28, !taffo.initweight !74
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %j.2, !taffo.info !28, !taffo.initweight !75
  %8 = load float, float* %arrayidx53, align 4, !taffo.info !97, !taffo.initweight !81
  %arrayidx54 = getelementptr inbounds float, float* %y, i32 %j.2, !taffo.info !40, !taffo.initweight !74
  %9 = load float, float* %arrayidx54, align 4, !taffo.info !40, !taffo.initweight !75
  %mul55 = fmul float %8, %9, !taffo.info !99, !taffo.initweight !81
  %sub56 = fsub float %w.2, %mul55, !taffo.info !101, !taffo.initweight !47
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond49, !llvm.loop !103

for.end59:                                        ; preds = %for.cond49
  %arrayidx60 = getelementptr inbounds float, float* %y, i32 %i.1, !taffo.info !40, !taffo.initweight !74
  store float %w.2, float* %arrayidx60, align 4, !taffo.info !92, !taffo.initweight !47
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond45, !llvm.loop !104

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.info !105, !taffo.constinfo !21
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ], !taffo.info !107
  %cmp66 = icmp sge i32 %i.2, 0, !taffo.info !66
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68 = getelementptr inbounds float, float* %y, i32 %i.2, !taffo.info !40, !taffo.initweight !74
  %10 = load float, float* %arrayidx68, align 4, !taffo.info !76, !taffo.initweight !47
  %add = add nsw i32 %i.2, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ], !taffo.info !109
  %w.3 = phi float [ %10, %for.body67 ], [ %sub76, %for.inc77 ], !taffo.info !76, !taffo.initweight !31
  %cmp70 = icmp slt i32 %j.3, %n, !taffo.info !68
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.info !28, !taffo.initweight !74
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %j.3, !taffo.info !28, !taffo.initweight !75
  %11 = load float, float* %arrayidx73, align 4, !taffo.info !28, !taffo.initweight !81
  %arrayidx74 = getelementptr inbounds float, float* %x, i32 %j.3, !taffo.info !37, !taffo.initweight !74
  %12 = load float, float* %arrayidx74, align 4, !taffo.info !37, !taffo.initweight !75
  %mul75 = fmul float %11, %12, !taffo.info !111, !taffo.initweight !81
  %sub76 = fsub float %w.3, %mul75, !taffo.info !113, !taffo.initweight !47
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !115, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !117

for.end79:                                        ; preds = %for.cond69
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.info !28, !taffo.initweight !74
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %i.2, !taffo.info !28, !taffo.initweight !75
  %13 = load float, float* %arrayidx81, align 4, !taffo.info !28, !taffo.initweight !81
  %div82 = fdiv float %w.3, %13, !taffo.info !89, !taffo.initweight !47
  %arrayidx83 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.info !37, !taffo.initweight !74
  store float %div82, float* %arrayidx83, align 4, !taffo.info !92, !taffo.initweight !58
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.info !118, !taffo.constinfo !21
  br label %for.cond65, !llvm.loop !120

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !121 !taffo.funinfo !122 !taffo.sourceFunction !49 {
entry:
  %conv = sitofp i32 %n to float, !taffo.info !123, !taffo.initweight !47
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !125, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !126, !taffo.initweight !47
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !127, !taffo.initweight !58

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !129, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !130, !taffo.initweight !58, !taffo.constinfo !131
  %arrayidx5 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !132, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.info !130, !taffo.initweight !58, !taffo.constinfo !131
  %add = add nsw i32 %i.0, 1, !taffo.info !133, !taffo.initweight !47, !taffo.constinfo !21
  %conv6 = sitofp i32 %add to float, !taffo.info !134, !taffo.initweight !58
  %div = fdiv float %conv6, %conv, !taffo.info !135, !taffo.initweight !47
  %conv7 = fpext float %div to double, !taffo.info !135, !taffo.initweight !58
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.info !138, !taffo.initweight !140, !taffo.constinfo !141
  %add9 = fadd double %div8, 4.000000e+00, !taffo.info !142, !taffo.initweight !74, !taffo.constinfo !144
  %conv10 = fptrunc double %add9 to float, !taffo.info !147, !taffo.initweight !75
  %arrayidx11 = getelementptr inbounds float, float* %b, i32 %i.0, !taffo.info !149, !taffo.initweight !47
  store float %conv10, float* %arrayidx11, align 4, !taffo.info !130, !taffo.initweight !58
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !133, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.info !125, !taffo.initweight !31
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.info !126, !taffo.initweight !47
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.info !127, !taffo.initweight !58

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.info !125, !taffo.initweight !31
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.info !126, !taffo.initweight !47
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.info !127, !taffo.initweight !58

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.info !151, !taffo.initweight !47, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !153, !taffo.initweight !58
  %conv20 = sitofp i32 %rem to float, !taffo.info !155, !taffo.initweight !140
  %conv21 = sitofp i32 %n to float, !taffo.info !123
  %div22 = fdiv float %conv20, %conv21, !taffo.info !157, !taffo.initweight !74
  %add23 = fadd float %div22, 1.000000e+00, !taffo.info !160, !taffo.initweight !74, !taffo.constinfo !162
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !163, !taffo.initweight !47
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.info !163, !taffo.initweight !47
  store float %add23, float* %arrayidx25, align 4, !taffo.info !130, !taffo.initweight !58
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.info !133, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !164

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.info !133, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.info !165, !taffo.initweight !31
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.info !126, !taffo.initweight !47
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.info !127, !taffo.initweight !58

for.body33:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !163, !taffo.initweight !47
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %j.1, !taffo.info !163, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.info !130, !taffo.initweight !58, !taffo.constinfo !131
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.info !167, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !169

for.end38:                                        ; preds = %for.cond30
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !163, !taffo.initweight !47
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %i.1, !taffo.info !163, !taffo.initweight !47
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.info !130, !taffo.initweight !58, !taffo.constinfo !170
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.info !133, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !171

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ], !taffo.info !55
  %cmp45 = icmp slt i32 %r.0, %n, !taffo.info !66
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ], !taffo.info !55
  %cmp49 = icmp slt i32 %s.0, %n, !taffo.info !66
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.0, !taffo.info !32, !taffo.initweight !74
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %s.0, !taffo.info !32, !taffo.initweight !75
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.info !130, !taffo.initweight !74, !taffo.constinfo !131
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !172

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !173

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ], !taffo.info !55
  %cmp61 = icmp slt i32 %t.0, %n, !taffo.info !66
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ], !taffo.info !55
  %cmp65 = icmp slt i32 %r.1, %n, !taffo.info !66
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ], !taffo.info !55
  %cmp69 = icmp slt i32 %s.1, %n, !taffo.info !66
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1, !taffo.info !28, !taffo.initweight !74
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %t.0, !taffo.info !28, !taffo.initweight !75
  %0 = load float, float* %arrayidx73, align 4, !taffo.info !28, !taffo.initweight !81
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1, !taffo.info !28, !taffo.initweight !74
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %t.0, !taffo.info !28, !taffo.initweight !75
  %1 = load float, float* %arrayidx75, align 4, !taffo.info !28, !taffo.initweight !81
  %mul = fmul float %0, %1, !taffo.info !82, !taffo.initweight !85
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.1, !taffo.info !32, !taffo.initweight !74
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.1, !taffo.info !32, !taffo.initweight !75
  %2 = load float, float* %arrayidx77, align 4, !taffo.info !32, !taffo.initweight !81
  %add78 = fadd float %2, %mul, !taffo.info !174, !taffo.initweight !85
  store float %add78, float* %arrayidx77, align 4, !taffo.info !176, !taffo.initweight !81
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !177

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond64, !llvm.loop !178

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !179

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ], !taffo.info !55
  %cmp89 = icmp slt i32 %r.2, %n, !taffo.info !66
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ], !taffo.info !55
  %cmp93 = icmp slt i32 %s.2, %n, !taffo.info !66
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.2, !taffo.info !32, !taffo.initweight !74
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %s.2, !taffo.info !32, !taffo.initweight !75
  %3 = load float, float* %arrayidx97, align 4, !taffo.info !32, !taffo.initweight !81
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2, !taffo.info !28, !taffo.initweight !74
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %s.2, !taffo.info !28, !taffo.initweight !75
  store float %3, float* %arrayidx99, align 4, !taffo.info !46, !taffo.initweight !81
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond92, !llvm.loop !180

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond88, !llvm.loop !181

for.end105:                                       ; preds = %for.cond88
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double -3.794700e-02, double 0x400FFCF893FAF428}
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
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 1.000000e+00, double 8.172500e+00}
!34 = !{!35, !36, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 29}
!36 = !{double 4.025000e+00, double 4.500000e+00}
!37 = !{!38, !1, i1 false, i2 -1}
!38 = !{!"fixp", i32 -32, i32 28}
!39 = !{!"x"}
!40 = !{!35, !41, i1 false, i2 -1}
!41 = !{double 0.000000e+00, double 4.025000e+00}
!42 = !{!29, i1 false, i1 false, i2 -1}
!43 = !{i32 1}
!44 = !{!35, i1 false, i1 false, i2 -1}
!45 = !{!38, i1 false, i1 false, i2 -1}
!46 = !{i1 false, !30, i1 false, i2 -1}
!47 = !{i32 2}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = distinct !{null}
!50 = !{i1 false}
!51 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!52 = distinct !{null}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 2.100000e+01}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 1.000000e+00}
!57 = !{i1 false, !1, i1 false, i2 -1}
!58 = !{i32 3}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.100000e+01}
!61 = distinct !{!61, !23}
!62 = !{i1 false, i1 false, i1 false}
!63 = !{i32 1, !64, i32 1, !0}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 2.000000e+01, double 2.000000e+01}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.000000e+00}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 0.000000e+00}
!70 = !{i1 false, i1 false, i1 false, i1 false}
!71 = distinct !{!71, !23}
!72 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!73 = !{i32 1, !64, i32 1, !28, i32 1, !34, i32 1, !37, i32 1, !40}
!74 = !{i32 5}
!75 = !{i32 6}
!76 = !{!77, !78, i1 false, i2 -1}
!77 = !{!"fixp", i32 -32, i32 23}
!78 = !{double -2.000000e+02, double 2.000000e+02}
!79 = !{!80, !78, i1 false, i2 -1}
!80 = !{!"fixp", i32 -32, i32 22}
!81 = !{i32 7}
!82 = !{!83, !84, i1 false, i2 -1}
!83 = !{!"fixp", i32 32, i32 25}
!84 = !{double 0x3F847AE147AE147C, double 0x4050B28B5DCC63F1}
!85 = !{i32 8}
!86 = !{!80, !87, i1 false, i2 -1}
!87 = !{double 0xC070ACA2D77318FC, double 1.999900e+02}
!88 = distinct !{!88, !23}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 -32, i32 20}
!91 = !{double -2.000000e+03, double 2.000000e+03}
!92 = !{i1 false, !78, i1 false, i2 -1}
!93 = distinct !{!93, !23}
!94 = distinct !{!94, !23}
!95 = distinct !{!95, !23}
!96 = distinct !{!96, !23}
!97 = !{!98, !30, i1 false, i2 -1}
!98 = !{!"fixp", i32 32, i32 26}
!99 = !{!98, !100, i1 false, i2 -1}
!100 = !{double 0.000000e+00, double 0x40407278D4FDF3B6}
!101 = !{!77, !102, i1 false, i2 -1}
!102 = !{double 0xC06D1C9E353F7CEE, double 2.000000e+02}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !23}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 1.900000e+01, double 1.900000e+01}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 1.800000e+01, double 1.900000e+01}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 2.000000e+01, double 2.100000e+01}
!111 = !{!77, !112, i1 false, i2 -1}
!112 = !{double 0xBFD3D90958EF2F78, double 0x404056C5D9587664}
!113 = !{!77, !114, i1 false, i2 -1}
!114 = !{double 0xC06D15B176561D99, double 0x406909EC84AC7798}
!115 = !{i1 false, !116, i1 false, i2 0}
!116 = !{double 2.100000e+01, double 2.100000e+01}
!117 = distinct !{!117, !23}
!118 = !{i1 false, !119, i1 false, i2 0}
!119 = !{double 1.800000e+01, double 1.800000e+01}
!120 = distinct !{!120, !23}
!121 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!122 = !{i32 1, !64, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !40}
!123 = !{!124, !65, i1 false, i2 1}
!124 = !{!"fixp", i32 32, i32 27}
!125 = !{i1 false, !54, i1 false, i2 1}
!126 = !{i1 false, !56, i1 false, i2 1}
!127 = !{i1 false, !128, i1 false, i2 1}
!128 = !{double 0.000000e+00, double 2.000000e+01}
!129 = !{!38, !1, i1 false, i2 1}
!130 = !{i1 false, i1 false, i1 false, i2 1}
!131 = !{!68, i1 false}
!132 = !{!35, !41, i1 false, i2 1}
!133 = !{i1 false, !60, i1 false, i2 1}
!134 = !{!124, !60, i1 false, i2 1}
!135 = !{!136, !137, i1 false, i2 1}
!136 = !{!"fixp", i32 32, i32 30}
!137 = !{double 5.000000e-02, double 1.050000e+00}
!138 = !{!35, !139, i1 false, i2 1}
!139 = !{double 2.500000e-02, double 5.250000e-01}
!140 = !{i32 4}
!141 = !{i1 false, !19}
!142 = !{!35, !143, i1 false, i2 1}
!143 = !{double 4.025000e+00, double 4.525000e+00}
!144 = !{i1 false, !145}
!145 = !{i1 false, !146, i1 false, i2 0}
!146 = !{double 4.000000e+00, double 4.000000e+00}
!147 = !{!35, !148, i1 false, i2 1}
!148 = !{double 0x4010199980000000, double 0x40121999A0000000}
!149 = !{!35, !36, i1 false, i2 1}
!150 = distinct !{!150, !23}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double -2.000000e+01, double 0.000000e+00}
!153 = !{i1 false, !154, i1 false, i2 1}
!154 = !{double -1.900000e+01, double 0.000000e+00}
!155 = !{!156, !154, i1 false, i2 1}
!156 = !{!"fixp", i32 -32, i32 26}
!157 = !{!158, !159, i1 false, i2 1}
!158 = !{!"fixp", i32 -32, i32 30}
!159 = !{double 0xBFEE666666666666, double 0.000000e+00}
!160 = !{!158, !161, i1 false, i2 1}
!161 = !{double 0x3FA99999999999A0, double 1.000000e+00}
!162 = !{i1 false, !66}
!163 = !{!29, !30, i1 false, i2 1}
!164 = distinct !{!164, !23}
!165 = !{i1 false, !166, i1 false, i2 1}
!166 = !{double 0.000000e+00, double 2.200000e+01}
!167 = !{i1 false, !168, i1 false, i2 1}
!168 = !{double 1.000000e+00, double 2.200000e+01}
!169 = distinct !{!169, !23}
!170 = !{!66, i1 false}
!171 = distinct !{!171, !23}
!172 = distinct !{!172, !23}
!173 = distinct !{!173, !23}
!174 = !{!83, !175, i1 false, i2 -1}
!175 = !{double 1.010000e+00, double 0x4052BD959B3D07C8}
!176 = !{i1 false, !33, i1 false, i2 -1}
!177 = distinct !{!177, !23}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
!180 = distinct !{!180, !23}
!181 = distinct !{!181, !23}
