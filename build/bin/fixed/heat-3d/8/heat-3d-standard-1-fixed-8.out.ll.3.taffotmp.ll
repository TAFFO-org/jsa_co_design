; ModuleID = './build/bin/fixed/heat-3d/8/heat-3d-standard-1-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [42 x i8] c"target('A') scalar(range(2.0,26.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/heat-3d.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [30 x i8] c"scalar(range(2.0,26.0) final)\00", section "llvm.metadata", !taffo.info !4
@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 4, !taffo.info !6
@.str.3 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 80) final)\00", section "llvm.metadata", !taffo.info !4
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !21
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !24
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.start !33 {
entry:
  %A = alloca [5 x [5 x [5 x float]]], align 4, !taffo.initweight !34, !taffo.target !35, !taffo.info !36
  %B = alloca [5 x [5 x [5 x float]]], align 4, !taffo.initweight !34, !taffo.info !36
  %A1 = bitcast [5 x [5 x [5 x float]]]* %A to i8*, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  %B2 = bitcast [5 x [5 x [5 x float]]]* %B to i8*, !taffo.initweight !38, !taffo.info !36
  %arraydecay = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  %arraydecay3 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0, !taffo.initweight !38, !taffo.info !36
  call void @init_array.2(i32 noundef 5, [5 x [5 x float]]* noundef %arraydecay, [5 x [5 x float]]* noundef %arraydecay3), !taffo.initweight !39, !taffo.target !35, !taffo.info !36, !taffo.originalCall !40, !taffo.constinfo !41
  call void @timer_start(), !taffo.constinfo !42
  %arraydecay4 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 0, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  %arraydecay5 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %B, i32 0, i32 0, !taffo.initweight !38, !taffo.info !36
  call void @kernel_heat_3d.1(i32 noundef 10, i32 noundef 5, [5 x [5 x float]]* noundef %arraydecay4, [5 x [5 x float]]* noundef %arraydecay5), !taffo.initweight !39, !taffo.target !35, !taffo.info !36, !taffo.originalCall !43, !taffo.constinfo !44
  call void @timer_stop(), !taffo.constinfo !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, 5, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !49
  %cmp7 = icmp slt i32 %j.0, 5, !taffo.info !47
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body8
  %k.0 = phi i32 [ 0, %for.body8 ], [ %inc, %for.inc ], !taffo.info !51
  %cmp10 = icmp slt i32 %k.0, 5, !taffo.info !47
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* %A, i32 0, i32 %i.0, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.target !35, !taffo.info !36
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.initweight !53, !taffo.target !35, !taffo.info !36
  %0 = load float, float* %arrayidx13, align 4, !taffo.initweight !54, !taffo.target !35, !taffo.info !36
  %arrayidx14 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !6
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !6
  store float %0, float* %arrayidx16, align 4, !taffo.initweight !55, !taffo.target !35, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !56, !taffo.constinfo !27
  br label %for.cond9, !llvm.loop !58

for.end:                                          ; preds = %for.cond9
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !61

for.end19:                                        ; preds = %for.cond6
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !62, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !64

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 5, [5 x [5 x float]]* noundef getelementptr inbounds ([5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !66 !taffo.funinfo !67 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.equivalentChild !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.initweight !34, !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !39, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !53, !taffo.info !71

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.initweight !34, !taffo.info !71
  %cmp5 = icmp slt i32 %j.0, %n, !taffo.initweight !39, !taffo.info !71
  br i1 %cmp5, label %for.body6, label %for.end19, !taffo.initweight !53, !taffo.info !71

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !71
  %cmp8 = icmp slt i32 %k.0, %n, !taffo.initweight !39, !taffo.info !71
  br i1 %cmp8, label %for.body9, label %for.end, !taffo.initweight !53, !taffo.info !71

for.body9:                                        ; preds = %for.cond7
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !39, !taffo.info !71
  %sub = sub nsw i32 %n, %k.0, !taffo.initweight !39, !taffo.info !71
  %add10 = add nsw i32 %add, %sub, !taffo.initweight !53, !taffo.info !71
  %conv = sitofp i32 %add10 to float, !taffo.initweight !54, !taffo.info !71
  %mul = fmul float %conv, 1.000000e+01, !taffo.initweight !55, !taffo.info !71, !taffo.constinfo !21
  %conv11 = sitofp i32 %n to float
  %div = fdiv float %mul, %conv11, !taffo.initweight !73, !taffo.info !71
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0, !taffo.initweight !39, !taffo.info !74
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.info !74
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.initweight !39, !taffo.info !74
  store float %div, float* %arrayidx13, align 4, !taffo.initweight !53, !taffo.info !74
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !39, !taffo.info !74
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.info !74
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.initweight !39, !taffo.info !74
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !53, !taffo.info !74
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.initweight !39, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !75

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.initweight !39, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !76

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.initweight !39, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !77

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !78 !taffo.funinfo !79 !taffo.equivalentChild !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %t.0 = phi i32 [ 1, %entry ], [ %inc145, %for.inc144 ]
  %cmp = icmp sle i32 %t.0, 10
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc67, %for.inc66 ]
  %sub = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc64, %for.inc63 ]
  %sub5 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp6 = icmp slt i32 %j.0, %sub5
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 1, %for.body7 ], [ %inc, %for.inc ]
  %sub9 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp10 = icmp slt i32 %k.0, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %add
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0
  %0 = load float, float* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx16, align 4
  %mul = fmul float 2.000000e+00, %1, !taffo.constinfo !24
  %sub17 = fsub float %0, %mul
  %sub18 = sub nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %sub18
  %arrayidx20 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i32 0, i32 %j.0
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx20, i32 0, i32 %k.0
  %2 = load float, float* %arrayidx21, align 4
  %add22 = fadd float %sub17, %2
  %mul23 = fmul float 1.250000e-01, %add22, !taffo.constinfo !81
  %arrayidx24 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %add25 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx26 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx24, i32 0, i32 %add25
  %arrayidx27 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx26, i32 0, i32 %k.0
  %3 = load float, float* %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %arrayidx29 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx28, i32 0, i32 %j.0
  %arrayidx30 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx29, i32 0, i32 %k.0
  %4 = load float, float* %arrayidx30, align 4
  %mul31 = fmul float 2.000000e+00, %4, !taffo.constinfo !24
  %sub32 = fsub float %3, %mul31
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %sub34 = sub nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx35 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i32 0, i32 %sub34
  %arrayidx36 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx35, i32 0, i32 %k.0
  %5 = load float, float* %arrayidx36, align 4
  %add37 = fadd float %sub32, %5
  %mul38 = fmul float 1.250000e-01, %add37, !taffo.constinfo !81
  %add39 = fadd float %mul23, %mul38
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %arrayidx41 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i32 0, i32 %j.0
  %add42 = add nsw i32 %k.0, 1, !taffo.constinfo !27
  %arrayidx43 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx41, i32 0, i32 %add42
  %6 = load float, float* %arrayidx43, align 4
  %arrayidx44 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %arrayidx45 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx44, i32 0, i32 %j.0
  %arrayidx46 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx45, i32 0, i32 %k.0
  %7 = load float, float* %arrayidx46, align 4
  %mul47 = fmul float 2.000000e+00, %7, !taffo.constinfo !24
  %sub48 = fsub float %6, %mul47
  %arrayidx49 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %arrayidx50 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx49, i32 0, i32 %j.0
  %sub51 = sub nsw i32 %k.0, 1, !taffo.constinfo !27
  %arrayidx52 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx50, i32 0, i32 %sub51
  %8 = load float, float* %arrayidx52, align 4
  %add53 = fadd float %sub48, %8
  %mul54 = fmul float 1.250000e-01, %add53, !taffo.constinfo !81
  %add55 = fadd float %add39, %mul54
  %arrayidx56 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0
  %arrayidx57 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx56, i32 0, i32 %j.0
  %arrayidx58 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx57, i32 0, i32 %k.0
  %9 = load float, float* %arrayidx58, align 4
  %add59 = fadd float %add55, %9
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0
  %arrayidx61 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx60, i32 0, i32 %j.0
  %arrayidx62 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx61, i32 0, i32 %k.0
  store float %add59, float* %arrayidx62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !84

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %inc64 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !85

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !86

for.end68:                                        ; preds = %for.cond1
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %i.1 = phi i32 [ 1, %for.end68 ], [ %inc142, %for.inc141 ]
  %sub70 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp71 = icmp slt i32 %i.1, %sub70
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %j.1 = phi i32 [ 1, %for.body72 ], [ %inc139, %for.inc138 ]
  %sub74 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp75 = icmp slt i32 %j.1, %sub74
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %k.1 = phi i32 [ 1, %for.body76 ], [ %inc136, %for.inc135 ]
  %sub78 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp79 = icmp slt i32 %k.1, %sub78
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %add81 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  %arrayidx82 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %add81
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx82, i32 0, i32 %j.1
  %arrayidx84 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx83, i32 0, i32 %k.1
  %10 = load float, float* %arrayidx84, align 4
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %arrayidx86 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx85, i32 0, i32 %j.1
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx86, i32 0, i32 %k.1
  %11 = load float, float* %arrayidx87, align 4
  %mul88 = fmul float 2.000000e+00, %11, !taffo.constinfo !24
  %sub89 = fsub float %10, %mul88
  %sub90 = sub nsw i32 %i.1, 1, !taffo.constinfo !27
  %arrayidx91 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %sub90
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx91, i32 0, i32 %j.1
  %arrayidx93 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i32 0, i32 %k.1
  %12 = load float, float* %arrayidx93, align 4
  %add94 = fadd float %sub89, %12
  %mul95 = fmul float 1.250000e-01, %add94, !taffo.constinfo !81
  %arrayidx96 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %add97 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  %arrayidx98 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx96, i32 0, i32 %add97
  %arrayidx99 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx98, i32 0, i32 %k.1
  %13 = load float, float* %arrayidx99, align 4
  %arrayidx100 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %arrayidx101 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx100, i32 0, i32 %j.1
  %arrayidx102 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx101, i32 0, i32 %k.1
  %14 = load float, float* %arrayidx102, align 4
  %mul103 = fmul float 2.000000e+00, %14, !taffo.constinfo !24
  %sub104 = fsub float %13, %mul103
  %arrayidx105 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %sub106 = sub nsw i32 %j.1, 1, !taffo.constinfo !27
  %arrayidx107 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx105, i32 0, i32 %sub106
  %arrayidx108 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx107, i32 0, i32 %k.1
  %15 = load float, float* %arrayidx108, align 4
  %add109 = fadd float %sub104, %15
  %mul110 = fmul float 1.250000e-01, %add109, !taffo.constinfo !81
  %add111 = fadd float %mul95, %mul110
  %arrayidx112 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %arrayidx113 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx112, i32 0, i32 %j.1
  %add114 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  %arrayidx115 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx113, i32 0, i32 %add114
  %16 = load float, float* %arrayidx115, align 4
  %arrayidx116 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx116, i32 0, i32 %j.1
  %arrayidx118 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i32 0, i32 %k.1
  %17 = load float, float* %arrayidx118, align 4
  %mul119 = fmul float 2.000000e+00, %17, !taffo.constinfo !24
  %sub120 = fsub float %16, %mul119
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %arrayidx122 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i32 0, i32 %j.1
  %sub123 = sub nsw i32 %k.1, 1, !taffo.constinfo !27
  %arrayidx124 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx122, i32 0, i32 %sub123
  %18 = load float, float* %arrayidx124, align 4
  %add125 = fadd float %sub120, %18
  %mul126 = fmul float 1.250000e-01, %add125, !taffo.constinfo !81
  %add127 = fadd float %add111, %mul126
  %arrayidx128 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1
  %arrayidx129 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx128, i32 0, i32 %j.1
  %arrayidx130 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx129, i32 0, i32 %k.1
  %19 = load float, float* %arrayidx130, align 4
  %add131 = fadd float %add127, %19
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.1
  %arrayidx133 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx132, i32 0, i32 %j.1
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx133, i32 0, i32 %k.1
  store float %add131, float* %arrayidx134, align 4
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %inc136 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond77, !llvm.loop !87

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %inc139 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond73, !llvm.loop !88

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %inc142 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond69, !llvm.loop !89

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %inc145 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !90

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [5 x [5 x float]]* noundef %A) #0 !taffo.initweight !31 !taffo.funinfo !91 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !94
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !47
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !94
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !47
  %cmp5 = icmp slt i32 %k.0, %n, !taffo.info !94
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %i.0, %n, !taffo.info !96
  %mul7 = mul nsw i32 %mul, %n, !taffo.info !96
  %mul8 = mul nsw i32 %j.0, %n, !taffo.info !96
  %add = add nsw i32 %mul7, %mul8, !taffo.info !96
  %add9 = add nsw i32 %add, %k.0, !taffo.info !96
  %rem = srem i32 %add9, 20, !taffo.info !96, !taffo.constinfo !27
  %cmp10 = icmp eq i32 %rem, 0, !taffo.info !94
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !65
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !6
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !6
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !41
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !98

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !99

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !100

for.end19:                                        ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d.1(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !101 !taffo.funinfo !102 !taffo.sourceFunction !43 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %t.0 = phi i32 [ 1, %entry ], [ %inc145, %for.inc144 ], !taffo.info !103
  %cmp = icmp sle i32 %t.0, 10, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc67, %for.inc66 ], !taffo.info !103
  %sub = sub nsw i32 %n, 1, !taffo.info !105, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !47
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc64, %for.inc63 ], !taffo.info !103
  %sub5 = sub nsw i32 %n, 1, !taffo.info !105, !taffo.constinfo !27
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !47
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 1, %for.body7 ], [ %inc, %for.inc ], !taffo.info !103
  %sub9 = sub nsw i32 %n, 1, !taffo.info !105, !taffo.constinfo !27
  %cmp10 = icmp slt i32 %k.0, %sub9, !taffo.info !47
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %add = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %add, !taffo.initweight !55, !taffo.info !36
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %0 = load float, float* %arrayidx13, align 4, !taffo.initweight !110, !taffo.info !36
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %1 = load float, float* %arrayidx16, align 4, !taffo.initweight !110, !taffo.info !36
  %mul = fmul float 2.000000e+00, %1, !taffo.initweight !111, !taffo.info !112, !taffo.constinfo !24
  %sub17 = fsub float %0, %mul, !taffo.initweight !111, !taffo.info !114
  %sub18 = sub nsw i32 %i.0, 1, !taffo.info !8, !taffo.constinfo !27
  %arrayidx19 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %sub18, !taffo.initweight !55, !taffo.info !36
  %arrayidx20 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx19, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx20, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %2 = load float, float* %arrayidx21, align 4, !taffo.initweight !110, !taffo.info !36
  %add22 = fadd float %sub17, %2, !taffo.initweight !111, !taffo.info !116
  %mul23 = fmul float 1.250000e-01, %add22, !taffo.initweight !118, !taffo.info !119, !taffo.constinfo !81
  %arrayidx24 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %add25 = add nsw i32 %j.0, 1, !taffo.info !107, !taffo.constinfo !27
  %arrayidx26 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx24, i32 0, i32 %add25, !taffo.initweight !73, !taffo.info !36
  %arrayidx27 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx26, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %3 = load float, float* %arrayidx27, align 4, !taffo.initweight !110, !taffo.info !36
  %arrayidx28 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %arrayidx29 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx28, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %arrayidx30 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx29, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %4 = load float, float* %arrayidx30, align 4, !taffo.initweight !110, !taffo.info !36
  %mul31 = fmul float 2.000000e+00, %4, !taffo.initweight !111, !taffo.info !112, !taffo.constinfo !24
  %sub32 = fsub float %3, %mul31, !taffo.initweight !111, !taffo.info !114
  %arrayidx33 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !8, !taffo.constinfo !27
  %arrayidx35 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx33, i32 0, i32 %sub34, !taffo.initweight !73, !taffo.info !36
  %arrayidx36 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx35, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %5 = load float, float* %arrayidx36, align 4, !taffo.initweight !110, !taffo.info !36
  %add37 = fadd float %sub32, %5, !taffo.initweight !111, !taffo.info !116
  %mul38 = fmul float 1.250000e-01, %add37, !taffo.initweight !118, !taffo.info !119, !taffo.constinfo !81
  %add39 = fadd float %mul23, %mul38, !taffo.initweight !121, !taffo.info !122
  %arrayidx40 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %arrayidx41 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx40, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %add42 = add nsw i32 %k.0, 1, !taffo.info !107, !taffo.constinfo !27
  %arrayidx43 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx41, i32 0, i32 %add42, !taffo.initweight !109, !taffo.info !36
  %6 = load float, float* %arrayidx43, align 4, !taffo.initweight !110, !taffo.info !36
  %arrayidx44 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %arrayidx45 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx44, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %arrayidx46 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx45, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %7 = load float, float* %arrayidx46, align 4, !taffo.initweight !110, !taffo.info !36
  %mul47 = fmul float 2.000000e+00, %7, !taffo.initweight !111, !taffo.info !112, !taffo.constinfo !24
  %sub48 = fsub float %6, %mul47, !taffo.initweight !111, !taffo.info !114
  %arrayidx49 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %arrayidx50 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx49, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %sub51 = sub nsw i32 %k.0, 1, !taffo.info !8, !taffo.constinfo !27
  %arrayidx52 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx50, i32 0, i32 %sub51, !taffo.initweight !109, !taffo.info !36
  %8 = load float, float* %arrayidx52, align 4, !taffo.initweight !110, !taffo.info !36
  %add53 = fadd float %sub48, %8, !taffo.initweight !111, !taffo.info !116
  %mul54 = fmul float 1.250000e-01, %add53, !taffo.initweight !118, !taffo.info !119, !taffo.constinfo !81
  %add55 = fadd float %add39, %mul54, !taffo.initweight !121, !taffo.info !124
  %arrayidx56 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %arrayidx57 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx56, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %arrayidx58 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx57, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  %9 = load float, float* %arrayidx58, align 4, !taffo.initweight !110, !taffo.info !36
  %add59 = fadd float %add55, %9, !taffo.initweight !111, !taffo.info !126
  %arrayidx60 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0, !taffo.initweight !55, !taffo.info !36
  %arrayidx61 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx60, i32 0, i32 %j.0, !taffo.initweight !73, !taffo.info !36
  %arrayidx62 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx61, i32 0, i32 %k.0, !taffo.initweight !109, !taffo.info !36
  store float %add59, float* %arrayidx62, align 4, !taffo.initweight !110, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !128

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %inc64 = add nsw i32 %j.0, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !129

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !130

for.end68:                                        ; preds = %for.cond1
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %i.1 = phi i32 [ 1, %for.end68 ], [ %inc142, %for.inc141 ], !taffo.info !103
  %sub70 = sub nsw i32 %n, 1, !taffo.info !105, !taffo.constinfo !27
  %cmp71 = icmp slt i32 %i.1, %sub70, !taffo.info !47
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %j.1 = phi i32 [ 1, %for.body72 ], [ %inc139, %for.inc138 ], !taffo.info !103
  %sub74 = sub nsw i32 %n, 1, !taffo.info !105, !taffo.constinfo !27
  %cmp75 = icmp slt i32 %j.1, %sub74, !taffo.info !47
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %k.1 = phi i32 [ 1, %for.body76 ], [ %inc136, %for.inc135 ], !taffo.info !103
  %sub78 = sub nsw i32 %n, 1, !taffo.info !105, !taffo.constinfo !27
  %cmp79 = icmp slt i32 %k.1, %sub78, !taffo.info !47
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %add81 = add nsw i32 %i.1, 1, !taffo.info !107, !taffo.constinfo !27
  %arrayidx82 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %add81, !taffo.initweight !55, !taffo.info !36
  %arrayidx83 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx82, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %arrayidx84 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx83, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %10 = load float, float* %arrayidx84, align 4, !taffo.initweight !110, !taffo.info !36
  %arrayidx85 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %arrayidx86 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx85, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %arrayidx87 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx86, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %11 = load float, float* %arrayidx87, align 4, !taffo.initweight !110, !taffo.info !36
  %mul88 = fmul float 2.000000e+00, %11, !taffo.initweight !111, !taffo.info !112, !taffo.constinfo !24
  %sub89 = fsub float %10, %mul88, !taffo.initweight !111, !taffo.info !114
  %sub90 = sub nsw i32 %i.1, 1, !taffo.info !8, !taffo.constinfo !27
  %arrayidx91 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %sub90, !taffo.initweight !55, !taffo.info !36
  %arrayidx92 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx91, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %arrayidx93 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx92, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %12 = load float, float* %arrayidx93, align 4, !taffo.initweight !110, !taffo.info !36
  %add94 = fadd float %sub89, %12, !taffo.initweight !111, !taffo.info !116
  %mul95 = fmul float 1.250000e-01, %add94, !taffo.initweight !118, !taffo.info !119, !taffo.constinfo !81
  %arrayidx96 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %add97 = add nsw i32 %j.1, 1, !taffo.info !107, !taffo.constinfo !27
  %arrayidx98 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx96, i32 0, i32 %add97, !taffo.initweight !73, !taffo.info !36
  %arrayidx99 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx98, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %13 = load float, float* %arrayidx99, align 4, !taffo.initweight !110, !taffo.info !36
  %arrayidx100 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %arrayidx101 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx100, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %arrayidx102 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx101, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %14 = load float, float* %arrayidx102, align 4, !taffo.initweight !110, !taffo.info !36
  %mul103 = fmul float 2.000000e+00, %14, !taffo.initweight !111, !taffo.info !112, !taffo.constinfo !24
  %sub104 = fsub float %13, %mul103, !taffo.initweight !111, !taffo.info !114
  %arrayidx105 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %sub106 = sub nsw i32 %j.1, 1, !taffo.info !8, !taffo.constinfo !27
  %arrayidx107 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx105, i32 0, i32 %sub106, !taffo.initweight !73, !taffo.info !36
  %arrayidx108 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx107, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %15 = load float, float* %arrayidx108, align 4, !taffo.initweight !110, !taffo.info !36
  %add109 = fadd float %sub104, %15, !taffo.initweight !111, !taffo.info !116
  %mul110 = fmul float 1.250000e-01, %add109, !taffo.initweight !118, !taffo.info !119, !taffo.constinfo !81
  %add111 = fadd float %mul95, %mul110, !taffo.initweight !121, !taffo.info !122
  %arrayidx112 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %arrayidx113 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx112, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %add114 = add nsw i32 %k.1, 1, !taffo.info !107, !taffo.constinfo !27
  %arrayidx115 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx113, i32 0, i32 %add114, !taffo.initweight !109, !taffo.info !36
  %16 = load float, float* %arrayidx115, align 4, !taffo.initweight !110, !taffo.info !36
  %arrayidx116 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %arrayidx117 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx116, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %arrayidx118 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx117, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %17 = load float, float* %arrayidx118, align 4, !taffo.initweight !110, !taffo.info !36
  %mul119 = fmul float 2.000000e+00, %17, !taffo.initweight !111, !taffo.info !112, !taffo.constinfo !24
  %sub120 = fsub float %16, %mul119, !taffo.initweight !111, !taffo.info !114
  %arrayidx121 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %arrayidx122 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx121, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %sub123 = sub nsw i32 %k.1, 1, !taffo.info !8, !taffo.constinfo !27
  %arrayidx124 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx122, i32 0, i32 %sub123, !taffo.initweight !109, !taffo.info !36
  %18 = load float, float* %arrayidx124, align 4, !taffo.initweight !110, !taffo.info !36
  %add125 = fadd float %sub120, %18, !taffo.initweight !111, !taffo.info !116
  %mul126 = fmul float 1.250000e-01, %add125, !taffo.initweight !118, !taffo.info !119, !taffo.constinfo !81
  %add127 = fadd float %add111, %mul126, !taffo.initweight !121, !taffo.info !124
  %arrayidx128 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %arrayidx129 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx128, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %arrayidx130 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx129, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  %19 = load float, float* %arrayidx130, align 4, !taffo.initweight !110, !taffo.info !36
  %add131 = fadd float %add127, %19, !taffo.initweight !111, !taffo.info !126
  %arrayidx132 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.1, !taffo.initweight !55, !taffo.info !36
  %arrayidx133 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx132, i32 0, i32 %j.1, !taffo.initweight !73, !taffo.info !36
  %arrayidx134 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx133, i32 0, i32 %k.1, !taffo.initweight !109, !taffo.info !36
  store float %add131, float* %arrayidx134, align 4, !taffo.initweight !110, !taffo.info !36
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %inc136 = add nsw i32 %k.1, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond77, !llvm.loop !131

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %inc139 = add nsw i32 %j.1, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond73, !llvm.loop !132

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %inc142 = add nsw i32 %i.1, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond69, !llvm.loop !133

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %inc145 = add nsw i32 %t.0, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !134

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [5 x [5 x float]]* noundef %A, [5 x [5 x float]]* noundef %B) #0 !taffo.initweight !135 !taffo.funinfo !136 !taffo.sourceFunction !40 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.initweight !34, !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !39, !taffo.info !137
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !53, !taffo.info !71

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.initweight !34, !taffo.info !71
  %cmp5 = icmp slt i32 %j.0, %n, !taffo.initweight !39, !taffo.info !137
  br i1 %cmp5, label %for.body6, label %for.end19, !taffo.initweight !53, !taffo.info !71

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !71
  %cmp8 = icmp slt i32 %k.0, %n, !taffo.initweight !39, !taffo.info !137
  br i1 %cmp8, label %for.body9, label %for.end, !taffo.initweight !53, !taffo.info !71

for.body9:                                        ; preds = %for.cond7
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !39, !taffo.info !138
  %sub = sub nsw i32 %n, %k.0, !taffo.initweight !39, !taffo.info !140
  %add10 = add nsw i32 %add, %sub, !taffo.initweight !53, !taffo.info !142
  %conv = sitofp i32 %add10 to float, !taffo.initweight !54, !taffo.info !142
  %mul = fmul float %conv, 1.000000e+01, !taffo.initweight !55, !taffo.info !144, !taffo.constinfo !21
  %conv11 = sitofp i32 %n to float, !taffo.info !92
  %div = fdiv float %mul, %conv11, !taffo.initweight !73, !taffo.info !146
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %B, i32 %i.0, !taffo.initweight !39, !taffo.info !148
  %arrayidx12 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.info !148
  %arrayidx13 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx12, i32 0, i32 %k.0, !taffo.initweight !39, !taffo.info !148
  store float %div, float* %arrayidx13, align 4, !taffo.initweight !53, !taffo.info !74
  %arrayidx14 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.initweight !39, !taffo.info !148
  %arrayidx15 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.info !148
  %arrayidx16 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.initweight !39, !taffo.info !148
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !53, !taffo.info !74
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.initweight !39, !taffo.info !149, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !151

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.initweight !39, !taffo.info !149, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !152

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.initweight !39, !taffo.info !149, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !153

for.end22:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.160000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 2.600000e+01}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+01}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.020000e+02}
!12 = !{i32 1, !"NumRegisterParameters", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
!21 = !{i1 false, !22}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+01, double 1.000000e+01}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 2.000000e+00, double 2.000000e+00}
!27 = !{i1 false, i1 false}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{}
!31 = !{i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false}
!33 = !{i1 true}
!34 = !{i32 0}
!35 = !{!"A"}
!36 = !{i1 false, !37, i1 false, i2 -1}
!37 = !{double 2.000000e+00, double 2.600000e+01}
!38 = !{i32 1}
!39 = !{i32 2}
!40 = !{void (i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @init_array}
!41 = !{i1 false, i1 false, i1 false, i1 false}
!42 = !{i1 false}
!43 = !{void (i32, i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @kernel_heat_3d}
!44 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 6.000000e+00}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.000000e+00}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 3.600000e+01}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 2.160000e+02}
!53 = !{i32 3}
!54 = !{i32 4}
!55 = !{i32 5}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 2.160000e+02}
!58 = distinct !{!58, !29}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 3.600000e+01}
!61 = distinct !{!61, !29}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 6.000000e+00}
!64 = distinct !{!64, !29}
!65 = !{i1 false, i1 false, i1 false}
!66 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!67 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!68 = !{i32 -1, i32 -1, i32 -1}
!69 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!70 = !{void (i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @init_array.2}
!71 = !{i1 false, !72, i1 false, i2 -1}
!72 = !{double 0.000000e+00, double 8.000000e+01}
!73 = !{i32 6}
!74 = !{i1 false, i1 false, i1 false, i2 1}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!79 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!80 = !{void (i32, i32, [5 x [5 x float]]*, [5 x [5 x float]]*)* @kernel_heat_3d.1}
!81 = !{!82, i1 false}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 1.250000e-01, double 1.250000e-01}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = !{i32 1, !92, i32 1, !6}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 5.000000e+00, double 5.000000e+00}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 1.000000e+00, double 1.000000e+00}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 0.000000e+00, double 0.000000e+00}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = !{i32 -1, i32 -1, i32 2, i32 2}
!102 = !{i32 1, !22, i32 1, !92, i32 1, !36, i32 1, !36}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 1.000000e+00, double 1.200000e+01}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 4.000000e+00, double 4.000000e+00}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 2.000000e+00, double 1.200000e+01}
!109 = !{i32 7}
!110 = !{i32 8}
!111 = !{i32 9}
!112 = !{i1 false, !113, i1 false, i2 -1}
!113 = !{double 4.000000e+00, double 5.200000e+01}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double -5.000000e+01, double 2.200000e+01}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double -4.800000e+01, double 4.800000e+01}
!118 = !{i32 10}
!119 = !{i1 false, !120, i1 false, i2 -1}
!120 = !{double -6.000000e+00, double 6.000000e+00}
!121 = !{i32 11}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double -1.200000e+01, double 1.200000e+01}
!124 = !{i1 false, !125, i1 false, i2 -1}
!125 = !{double -1.800000e+01, double 1.800000e+01}
!126 = !{i1 false, !127, i1 false, i2 -1}
!127 = !{double -1.600000e+01, double 4.400000e+01}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = distinct !{!133, !29}
!134 = distinct !{!134, !29}
!135 = !{i32 -1, i32 2, i32 2}
!136 = !{i32 1, !92, i32 1, !36, i32 1, !36}
!137 = !{i1 false, !48, i1 false, i2 -1}
!138 = !{i1 false, !139, i1 false, i2 -1}
!139 = !{double 0.000000e+00, double 1.600000e+02}
!140 = !{i1 false, !141, i1 false, i2 -1}
!141 = !{double -7.500000e+01, double 5.000000e+00}
!142 = !{i1 false, !143, i1 false, i2 -1}
!143 = !{double -7.500000e+01, double 1.650000e+02}
!144 = !{i1 false, !145, i1 false, i2 -1}
!145 = !{double -7.500000e+02, double 1.650000e+03}
!146 = !{i1 false, !147, i1 false, i2 -1}
!147 = !{double -1.500000e+02, double 3.300000e+02}
!148 = !{i1 false, !37, i1 false, i2 1}
!149 = !{i1 false, !150, i1 false, i2 -1}
!150 = !{double 1.000000e+00, double 8.100000e+01}
!151 = distinct !{!151, !29}
!152 = distinct !{!152, !29}
!153 = distinct !{!153, !29}
