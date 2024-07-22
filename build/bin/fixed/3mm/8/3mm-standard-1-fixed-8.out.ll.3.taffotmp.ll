; ModuleID = './build/bin/fixed/3mm/8/3mm-standard-1-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.108333) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/3mm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.166667) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,0.175) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,0.128) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.183333) final)\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.18) final)\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [46 x i8] c"target('G') scalar(range(0.0,0.054283) final)\00", section "llvm.metadata", !taffo.info !4
@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.8 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 14))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

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
  %E = alloca [6 x [8 x float]], align 4, !taffo.initweight !34, !taffo.info !35
  %A = alloca [6 x [10 x float]], align 4, !taffo.initweight !34, !taffo.info !37
  %B = alloca [10 x [8 x float]], align 4, !taffo.initweight !34, !taffo.info !39
  %F = alloca [8 x [12 x float]], align 4, !taffo.initweight !34, !taffo.info !41
  %C = alloca [8 x [14 x float]], align 4, !taffo.initweight !34, !taffo.info !43
  %D = alloca [14 x [12 x float]], align 4, !taffo.initweight !34, !taffo.info !45
  %G = alloca [6 x [12 x float]], align 4, !taffo.initweight !34, !taffo.info !47, !taffo.target !48
  %E1 = bitcast [6 x [8 x float]]* %E to i8*, !taffo.initweight !49, !taffo.info !35
  %A2 = bitcast [6 x [10 x float]]* %A to i8*, !taffo.initweight !49, !taffo.info !37
  %B3 = bitcast [10 x [8 x float]]* %B to i8*, !taffo.initweight !49, !taffo.info !39
  %F4 = bitcast [8 x [12 x float]]* %F to i8*, !taffo.initweight !49, !taffo.info !41
  %C5 = bitcast [8 x [14 x float]]* %C to i8*, !taffo.initweight !49, !taffo.info !43
  %D6 = bitcast [14 x [12 x float]]* %D to i8*, !taffo.initweight !49, !taffo.info !45
  %G7 = bitcast [6 x [12 x float]]* %G to i8*, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  %arraydecay = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !49, !taffo.info !37
  %arraydecay8 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !49, !taffo.info !39
  %arraydecay9 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !49, !taffo.info !43
  %arraydecay10 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !49, !taffo.info !45
  %arraydecay11 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !49, !taffo.info !35
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !49, !taffo.info !41
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  call void @init_array.2(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [10 x float]* noundef %arraydecay, [8 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10, [8 x float]* noundef %arraydecay11, [12 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.initweight !50, !taffo.info !35, !taffo.originalCall !51, !taffo.constinfo !52
  call void @timer_start(), !taffo.constinfo !53
  %arraydecay14 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.initweight !49, !taffo.info !35
  %arraydecay15 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !49, !taffo.info !37
  %arraydecay16 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.initweight !49, !taffo.info !39
  %arraydecay17 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.initweight !49, !taffo.info !41
  %arraydecay18 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !49, !taffo.info !43
  %arraydecay19 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.initweight !49, !taffo.info !45
  %arraydecay20 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  call void @kernel_3mm.1(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [8 x float]* noundef %arraydecay14, [10 x float]* noundef %arraydecay15, [8 x float]* noundef %arraydecay16, [12 x float]* noundef %arraydecay17, [14 x float]* noundef %arraydecay18, [12 x float]* noundef %arraydecay19, [12 x float]* noundef %arraydecay20), !taffo.initweight !50, !taffo.info !35, !taffo.originalCall !54, !taffo.constinfo !52
  call void @timer_stop(), !taffo.constinfo !53
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !57
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !59
  %cmp22 = icmp slt i32 %j.0, 12, !taffo.info !57
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %arrayidx = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 %i.0, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  %arrayidx24 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !50, !taffo.info !47, !taffo.target !48
  %0 = load float, float* %arrayidx24, align 4, !taffo.initweight !61, !taffo.info !47, !taffo.target !48
  %arrayidx25 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx25, i32 0, i32 %j.0, !taffo.info !6
  store float %0, float* %arrayidx26, align 4, !taffo.initweight !62, !taffo.info !47, !taffo.target !48
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %inc = add nsw i32 %j.0, 1, !taffo.info !63, !taffo.constinfo !27
  br label %for.cond21, !llvm.loop !65

for.end:                                          ; preds = %for.cond21
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !68

for.end29:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !70 !taffo.funinfo !71 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !72 !taffo.funinfo !73 !taffo.equivalentChild !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.initweight !34, !taffo.info !75
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end11, !taffo.initweight !61, !taffo.info !75

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !75
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !61, !taffo.info !75

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !50, !taffo.info !75
  %add = add nsw i32 %mul, 1, !taffo.initweight !61, !taffo.info !75, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !62, !taffo.info !75
  %conv = sitofp i32 %rem to float, !taffo.initweight !77, !taffo.info !75
  %mul6 = mul nsw i32 5, %ni, !taffo.constinfo !27
  %conv7 = sitofp i32 %mul6 to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !78, !taffo.info !75
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !50, !taffo.info !79
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !50, !taffo.info !79
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !80

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !81

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.initweight !34, !taffo.info !75
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.initweight !61, !taffo.info !75

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.initweight !34, !taffo.info !75
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.initweight !61, !taffo.info !75

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.initweight !50, !taffo.info !75
  %add22 = add nsw i32 %mul21, 2, !taffo.initweight !61, !taffo.info !75, !taffo.constinfo !27
  %rem23 = srem i32 %add22, %nj, !taffo.initweight !62, !taffo.info !75
  %conv24 = sitofp i32 %rem23 to float, !taffo.initweight !77, !taffo.info !75
  %mul25 = mul nsw i32 5, %nj, !taffo.constinfo !27
  %conv26 = sitofp i32 %mul25 to float
  %div27 = fdiv float %conv24, %conv26, !taffo.initweight !78, !taffo.info !75
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %i.1, !taffo.initweight !50, !taffo.info !79
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %j.1, !taffo.initweight !50, !taffo.info !79
  store float %div27, float* %arrayidx29, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !82

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !83

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.initweight !34, !taffo.info !75
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.initweight !61, !taffo.info !75

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.initweight !34, !taffo.info !75
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.initweight !61, !taffo.info !75

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.initweight !50, !taffo.info !75
  %rem46 = srem i32 %mul45, %nl, !taffo.initweight !61, !taffo.info !75
  %conv47 = sitofp i32 %rem46 to float, !taffo.initweight !62, !taffo.info !75
  %mul48 = mul nsw i32 5, %nl, !taffo.constinfo !27
  %conv49 = sitofp i32 %mul48 to float
  %div50 = fdiv float %conv47, %conv49, !taffo.initweight !77, !taffo.info !75
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !50, !taffo.info !79
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %j.2, !taffo.initweight !50, !taffo.info !79
  store float %div50, float* %arrayidx52, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond40, !llvm.loop !84

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond36, !llvm.loop !85

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.initweight !34, !taffo.info !75
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.initweight !61, !taffo.info !75

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.initweight !34, !taffo.info !75
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.initweight !61, !taffo.info !75

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.initweight !50, !taffo.info !75
  %add69 = add nsw i32 %mul68, 2, !taffo.initweight !61, !taffo.info !75, !taffo.constinfo !27
  %rem70 = srem i32 %add69, %nk, !taffo.initweight !62, !taffo.info !75
  %conv71 = sitofp i32 %rem70 to float, !taffo.initweight !77, !taffo.info !75
  %mul72 = mul nsw i32 5, %nk, !taffo.constinfo !27
  %conv73 = sitofp i32 %mul72 to float
  %div74 = fdiv float %conv71, %conv73, !taffo.initweight !78, !taffo.info !75
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %i.3, !taffo.initweight !50, !taffo.info !79
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %j.3, !taffo.initweight !50, !taffo.info !79
  store float %div74, float* %arrayidx76, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond63, !llvm.loop !86

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond59, !llvm.loop !87

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.initweight !34, !taffo.info !75
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.initweight !61, !taffo.info !75

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.initweight !34, !taffo.info !75
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.initweight !61, !taffo.info !75

for.body90:                                       ; preds = %for.cond87
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.4, !taffo.initweight !50, !taffo.info !79
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %j.4, !taffo.initweight !50, !taffo.info !79
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !88
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond87, !llvm.loop !91

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond83, !llvm.loop !92

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.initweight !34, !taffo.info !75
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.initweight !61, !taffo.info !75

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.initweight !34, !taffo.info !75
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.initweight !61, !taffo.info !75

for.body106:                                      ; preds = %for.cond103
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.5, !taffo.initweight !50, !taffo.info !79
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %j.5, !taffo.initweight !50, !taffo.info !79
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !88
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond103, !llvm.loop !93

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond99, !llvm.loop !94

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.initweight !34, !taffo.info !75
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.initweight !61, !taffo.info !75

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.initweight !34, !taffo.info !75
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.initweight !50, !taffo.info !75
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.initweight !61, !taffo.info !75

for.body122:                                      ; preds = %for.cond119
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.initweight !50, !taffo.info !79
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %j.6, !taffo.initweight !50, !taffo.info !79
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !88
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond119, !llvm.loop !95

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.initweight !50, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond115, !llvm.loop !96

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !72 !taffo.funinfo !73 !taffo.equivalentChild !97 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %cmp = icmp slt i32 %i.0, %ni
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ]
  %cmp2 = icmp slt i32 %j.0, %nj
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %j.0
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !77, !taffo.info !79, !taffo.constinfo !88
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp6 = icmp slt i32 %k.0, %nk
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0
  %0 = load float, float* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %k.0
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx11, align 4
  %mul = fmul float %0, %1
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx13, align 4
  %add = fadd float %2, %mul
  store float %add, float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !98

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !99

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !100

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ]
  %cmp21 = icmp slt i32 %i.1, %nj
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ]
  %cmp24 = icmp slt i32 %j.1, %nl
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %j.1
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.initweight !77, !taffo.info !79, !taffo.constinfo !88
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ]
  %cmp29 = icmp slt i32 %k.1, %nm
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.1
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %k.1
  %3 = load float, float* %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %k.1
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %j.1
  %4 = load float, float* %arrayidx34, align 4
  %mul35 = fmul float %3, %4
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %j.1
  %5 = load float, float* %arrayidx37, align 4
  %add38 = fadd float %5, %mul35
  store float %add38, float* %arrayidx37, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond28, !llvm.loop !101

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !102

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !103

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ]
  %cmp49 = icmp slt i32 %i.2, %ni
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ]
  %cmp52 = icmp slt i32 %j.2, %nl
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %j.2
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.initweight !77, !taffo.info !79, !taffo.constinfo !88
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ]
  %cmp57 = icmp slt i32 %k.2, %nj
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.2
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %k.2
  %6 = load float, float* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %k.2
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %j.2
  %7 = load float, float* %arrayidx62, align 4
  %mul63 = fmul float %6, %7
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %j.2
  %8 = load float, float* %arrayidx65, align 4
  %add66 = fadd float %8, %mul63
  store float %add66, float* %arrayidx65, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !104

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.constinfo !27
  br label %for.cond51, !llvm.loop !105

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !106

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !107 !taffo.funinfo !108 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !57
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !113
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !57
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !113
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !89
  %add = add nsw i32 %mul, %j.0, !taffo.info !89
  %rem = srem i32 %add, 20, !taffo.info !89, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !113
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !115
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !116

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !117

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !118 !taffo.funinfo !119 !taffo.sourceFunction !54 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !57
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !113
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !57
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !113
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.initweight !77, !taffo.info !35
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !35
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !77, !taffo.info !79, !taffo.constinfo !88
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !57
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !113
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !77, !taffo.info !37
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.initweight !78, !taffo.info !37
  %0 = load float, float* %arrayidx9, align 4, !taffo.initweight !124, !taffo.info !37
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %k.0, !taffo.initweight !77, !taffo.info !39
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !39
  %1 = load float, float* %arrayidx11, align 4, !taffo.initweight !124, !taffo.info !39
  %mul = fmul float %0, %1, !taffo.initweight !125, !taffo.info !126
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.initweight !77, !taffo.info !35
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !35
  %2 = load float, float* %arrayidx13, align 4, !taffo.initweight !124, !taffo.info !35
  %add = fadd float %2, %mul, !taffo.initweight !125, !taffo.info !128
  store float %add, float* %arrayidx13, align 4, !taffo.initweight !124, !taffo.info !35
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !130

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !131

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !132

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !57
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !113
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !57
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !113
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.initweight !77, !taffo.info !41
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %j.1, !taffo.initweight !78, !taffo.info !41
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.initweight !77, !taffo.info !79, !taffo.constinfo !88
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !57
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !113
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.1, !taffo.initweight !77, !taffo.info !43
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %k.1, !taffo.initweight !78, !taffo.info !43
  %3 = load float, float* %arrayidx32, align 4, !taffo.initweight !124, !taffo.info !43
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %k.1, !taffo.initweight !77, !taffo.info !45
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.initweight !78, !taffo.info !45
  %4 = load float, float* %arrayidx34, align 4, !taffo.initweight !124, !taffo.info !45
  %mul35 = fmul float %3, %4, !taffo.initweight !125, !taffo.info !133
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.initweight !77, !taffo.info !41
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %j.1, !taffo.initweight !78, !taffo.info !41
  %5 = load float, float* %arrayidx37, align 4, !taffo.initweight !124, !taffo.info !41
  %add38 = fadd float %5, %mul35, !taffo.initweight !125, !taffo.info !135
  store float %add38, float* %arrayidx37, align 4, !taffo.initweight !124, !taffo.info !41
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond28, !llvm.loop !137

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !138

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !139

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !57
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !113
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !57
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !113
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.initweight !77, !taffo.info !47
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %j.2, !taffo.initweight !78, !taffo.info !47
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.initweight !77, !taffo.info !79, !taffo.constinfo !88
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !57
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !113
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.2, !taffo.initweight !77, !taffo.info !35
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %k.2, !taffo.initweight !78, !taffo.info !35
  %6 = load float, float* %arrayidx60, align 4, !taffo.initweight !124, !taffo.info !35
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %k.2, !taffo.initweight !77, !taffo.info !41
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %j.2, !taffo.initweight !78, !taffo.info !41
  %7 = load float, float* %arrayidx62, align 4, !taffo.initweight !124, !taffo.info !41
  %mul63 = fmul float %6, %7, !taffo.initweight !125, !taffo.info !140
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.initweight !77, !taffo.info !47
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %j.2, !taffo.initweight !78, !taffo.info !47
  %8 = load float, float* %arrayidx65, align 4, !taffo.initweight !124, !taffo.info !47
  %add66 = fadd float %8, %mul63, !taffo.initweight !125, !taffo.info !142
  store float %add66, float* %arrayidx65, align 4, !taffo.initweight !124, !taffo.info !47
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !144

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond51, !llvm.loop !145

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !146

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !118 !taffo.funinfo !147 !taffo.sourceFunction !51 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.initweight !34, !taffo.info !148
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp, label %for.body, label %for.end11, !taffo.initweight !61, !taffo.info !75

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !148
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !61, !taffo.info !75

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !50, !taffo.info !151
  %add = add nsw i32 %mul, 1, !taffo.initweight !61, !taffo.info !153, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !62, !taffo.info !155
  %conv = sitofp i32 %rem to float, !taffo.initweight !77, !taffo.info !155
  %mul6 = mul nsw i32 5, %ni, !taffo.info !157, !taffo.constinfo !27
  %conv7 = sitofp i32 %mul6 to float, !taffo.info !157
  %div = fdiv float %conv, %conv7, !taffo.initweight !78, !taffo.info !159
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !50, !taffo.info !161
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !50, !taffo.info !161
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !164

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !165

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.initweight !34, !taffo.info !148
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.initweight !61, !taffo.info !75

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.initweight !34, !taffo.info !148
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.initweight !61, !taffo.info !75

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.initweight !50, !taffo.info !166
  %add22 = add nsw i32 %mul21, 2, !taffo.initweight !61, !taffo.info !168, !taffo.constinfo !27
  %rem23 = srem i32 %add22, %nj, !taffo.initweight !62, !taffo.info !170
  %conv24 = sitofp i32 %rem23 to float, !taffo.initweight !77, !taffo.info !170
  %mul25 = mul nsw i32 5, %nj, !taffo.info !171, !taffo.constinfo !27
  %conv26 = sitofp i32 %mul25 to float, !taffo.info !171
  %div27 = fdiv float %conv24, %conv26, !taffo.initweight !78, !taffo.info !173
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %i.1, !taffo.initweight !50, !taffo.info !173
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %j.1, !taffo.initweight !50, !taffo.info !173
  store float %div27, float* %arrayidx29, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !174

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !175

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.initweight !34, !taffo.info !148
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.initweight !61, !taffo.info !75

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.initweight !34, !taffo.info !148
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.initweight !61, !taffo.info !75

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.initweight !50, !taffo.info !176, !taffo.constinfo !27
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.initweight !50, !taffo.info !178
  %rem46 = srem i32 %mul45, %nl, !taffo.initweight !61, !taffo.info !180
  %conv47 = sitofp i32 %rem46 to float, !taffo.initweight !62, !taffo.info !180
  %mul48 = mul nsw i32 5, %nl, !taffo.info !182, !taffo.constinfo !27
  %conv49 = sitofp i32 %mul48 to float, !taffo.info !182
  %div50 = fdiv float %conv47, %conv49, !taffo.initweight !77, !taffo.info !184
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !50, !taffo.info !186
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %j.2, !taffo.initweight !50, !taffo.info !186
  store float %div50, float* %arrayidx52, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond40, !llvm.loop !187

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond36, !llvm.loop !188

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.initweight !34, !taffo.info !148
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.initweight !61, !taffo.info !75

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.initweight !34, !taffo.info !148
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.initweight !61, !taffo.info !75

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.initweight !50, !taffo.info !189, !taffo.constinfo !27
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.initweight !50, !taffo.info !191
  %add69 = add nsw i32 %mul68, 2, !taffo.initweight !61, !taffo.info !193, !taffo.constinfo !27
  %rem70 = srem i32 %add69, %nk, !taffo.initweight !62, !taffo.info !195
  %conv71 = sitofp i32 %rem70 to float, !taffo.initweight !77, !taffo.info !195
  %mul72 = mul nsw i32 5, %nk, !taffo.info !197, !taffo.constinfo !27
  %conv73 = sitofp i32 %mul72 to float, !taffo.info !197
  %div74 = fdiv float %conv71, %conv73, !taffo.initweight !78, !taffo.info !199
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %i.3, !taffo.initweight !50, !taffo.info !199
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %j.3, !taffo.initweight !50, !taffo.info !199
  store float %div74, float* %arrayidx76, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond63, !llvm.loop !200

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond59, !llvm.loop !201

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.initweight !34, !taffo.info !148
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.initweight !61, !taffo.info !75

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.initweight !34, !taffo.info !148
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.initweight !61, !taffo.info !75

for.body90:                                       ; preds = %for.cond87
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.4, !taffo.initweight !50, !taffo.info !202
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %j.4, !taffo.initweight !50, !taffo.info !202
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !88
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond87, !llvm.loop !203

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond83, !llvm.loop !204

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.initweight !34, !taffo.info !148
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.initweight !61, !taffo.info !75

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.initweight !34, !taffo.info !148
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.initweight !61, !taffo.info !75

for.body106:                                      ; preds = %for.cond103
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.5, !taffo.initweight !50, !taffo.info !205
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %j.5, !taffo.initweight !50, !taffo.info !205
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !88
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond103, !llvm.loop !206

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond99, !llvm.loop !207

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.initweight !34, !taffo.info !148
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.initweight !61, !taffo.info !75

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.initweight !34, !taffo.info !148
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.initweight !50, !taffo.info !150
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.initweight !61, !taffo.info !75

for.body122:                                      ; preds = %for.cond119
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.initweight !50, !taffo.info !208
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %j.6, !taffo.initweight !50, !taffo.info !208
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !88
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond119, !llvm.loop !209

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.initweight !50, !taffo.info !162, !taffo.constinfo !27
  br label %for.cond115, !llvm.loop !210

for.end130:                                       ; preds = %for.cond115
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 5.428300e-02}
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
!18 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
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
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 0.000000e+00, double 1.083330e-01}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 1.666670e-01}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 1.750000e-01}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 1.280000e-01}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 0.000000e+00, double 1.833330e-01}
!45 = !{i1 false, !46, i1 false, i2 -1}
!46 = !{double 0.000000e+00, double 1.800000e-01}
!47 = !{i1 false, !7, i1 false, i2 -1}
!48 = !{!"G"}
!49 = !{i32 1}
!50 = !{i32 2}
!51 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array}
!52 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!53 = !{i1 false}
!54 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 7.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 1.000000e+00}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 9.100000e+01}
!61 = !{i32 3}
!62 = !{i32 4}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 9.100000e+01}
!65 = distinct !{!65, !29}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 7.000000e+00}
!68 = distinct !{!68, !29}
!69 = !{i1 false, i1 false, i1 false, i1 false}
!70 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!71 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!72 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!73 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!74 = !{void (i32, i32, i32, i32, i32, [10 x float]*, [8 x float]*, [14 x float]*, [12 x float]*, [8 x float]*, [12 x float]*, [12 x float]*)* @init_array.2}
!75 = !{i1 false, !76, i1 false, i2 1}
!76 = !{double 0.000000e+00, double 1.400000e+01}
!77 = !{i32 5}
!78 = !{i32 6}
!79 = !{i1 false, i1 false, i1 false, i2 1}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = !{!89, i1 false}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 0.000000e+00, double 0.000000e+00}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
!96 = distinct !{!96, !29}
!97 = !{void (i32, i32, i32, i32, i32, [8 x float]*, [10 x float]*, [8 x float]*, [12 x float]*, [14 x float]*, [12 x float]*, [12 x float]*)* @kernel_3mm.1}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = !{i32 -1, i32 -1, i32 -1}
!108 = !{i32 1, !109, i32 1, !111, i32 1, !6}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 6.000000e+00, double 6.000000e+00}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 1.200000e+01, double 1.200000e+01}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 1.000000e+00, double 1.000000e+00}
!115 = !{i1 false, i1 false, i1 false}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!119 = !{i32 1, !109, i32 1, !120, i32 1, !22, i32 1, !111, i32 1, !122, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43, i32 1, !45, i32 1, !47}
!120 = !{i1 false, !121, i1 false, i2 0}
!121 = !{double 8.000000e+00, double 8.000000e+00}
!122 = !{i1 false, !123, i1 false, i2 0}
!123 = !{double 1.400000e+01, double 1.400000e+01}
!124 = !{i32 7}
!125 = !{i32 8}
!126 = !{i1 false, !127, i1 false, i2 -1}
!127 = !{double 0.000000e+00, double 0x3F9DDDE1C806946F}
!128 = !{i1 false, !129, i1 false, i2 -1}
!129 = !{double 0.000000e+00, double 0x3FC199974B0AC04D}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = !{i1 false, !134, i1 false, i2 -1}
!134 = !{double 0.000000e+00, double 0x3FA0E55E3E23D217}
!135 = !{i1 false, !136, i1 false, i2 -1}
!136 = !{double 0.000000e+00, double 0x3FC49BA5627A9E82}
!137 = distinct !{!137, !29}
!138 = distinct !{!138, !29}
!139 = distinct !{!139, !29}
!140 = !{i1 false, !141, i1 false, i2 -1}
!141 = !{double 0.000000e+00, double 0x3F8C661AC4AFFB63}
!142 = !{i1 false, !143, i1 false, i2 -1}
!143 = !{double 0.000000e+00, double 0x3FB17240F6508FF6}
!144 = distinct !{!144, !29}
!145 = distinct !{!145, !29}
!146 = distinct !{!146, !29}
!147 = !{i32 1, !109, i32 1, !120, i32 1, !22, i32 1, !111, i32 1, !122, i32 1, !37, i32 1, !39, i32 1, !43, i32 1, !45, i32 1, !35, i32 1, !41, i32 1, !47}
!148 = !{i1 false, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 1.500000e+01}
!150 = !{i1 false, !58, i1 false, i2 1}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double 0.000000e+00, double 1.960000e+02}
!153 = !{i1 false, !154, i1 false, i2 1}
!154 = !{double 1.000000e+00, double 1.970000e+02}
!155 = !{i1 false, !156, i1 false, i2 1}
!156 = !{double 0.000000e+00, double 5.000000e+00}
!157 = !{i1 false, !158, i1 false, i2 0}
!158 = !{double 3.000000e+01, double 3.000000e+01}
!159 = !{i1 false, !160, i1 false, i2 1}
!160 = !{double 0.000000e+00, double 0x3FC5555555555555}
!161 = !{i1 false, !38, i1 false, i2 1}
!162 = !{i1 false, !163, i1 false, i2 1}
!163 = !{double 1.000000e+00, double 1.500000e+01}
!164 = distinct !{!164, !29}
!165 = distinct !{!165, !29}
!166 = !{i1 false, !167, i1 false, i2 1}
!167 = !{double 0.000000e+00, double 2.100000e+02}
!168 = !{i1 false, !169, i1 false, i2 1}
!169 = !{double 2.000000e+00, double 2.120000e+02}
!170 = !{i1 false, !56, i1 false, i2 1}
!171 = !{i1 false, !172, i1 false, i2 0}
!172 = !{double 4.000000e+01, double 4.000000e+01}
!173 = !{i1 false, !40, i1 false, i2 1}
!174 = distinct !{!174, !29}
!175 = distinct !{!175, !29}
!176 = !{i1 false, !177, i1 false, i2 1}
!177 = !{double 3.000000e+00, double 1.700000e+01}
!178 = !{i1 false, !179, i1 false, i2 1}
!179 = !{double 0.000000e+00, double 2.380000e+02}
!180 = !{i1 false, !181, i1 false, i2 1}
!181 = !{double 0.000000e+00, double 1.100000e+01}
!182 = !{i1 false, !183, i1 false, i2 0}
!183 = !{double 6.000000e+01, double 6.000000e+01}
!184 = !{i1 false, !185, i1 false, i2 1}
!185 = !{double 0.000000e+00, double 0x3FC7777777777777}
!186 = !{i1 false, !44, i1 false, i2 1}
!187 = distinct !{!187, !29}
!188 = distinct !{!188, !29}
!189 = !{i1 false, !190, i1 false, i2 1}
!190 = !{double 2.000000e+00, double 1.600000e+01}
!191 = !{i1 false, !192, i1 false, i2 1}
!192 = !{double 0.000000e+00, double 2.240000e+02}
!193 = !{i1 false, !194, i1 false, i2 1}
!194 = !{double 2.000000e+00, double 2.260000e+02}
!195 = !{i1 false, !196, i1 false, i2 1}
!196 = !{double 0.000000e+00, double 9.000000e+00}
!197 = !{i1 false, !198, i1 false, i2 0}
!198 = !{double 5.000000e+01, double 5.000000e+01}
!199 = !{i1 false, !46, i1 false, i2 1}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, !29}
!202 = !{i1 false, !36, i1 false, i2 1}
!203 = distinct !{!203, !29}
!204 = distinct !{!204, !29}
!205 = !{i1 false, !42, i1 false, i2 1}
!206 = distinct !{!206, !29}
!207 = distinct !{!207, !29}
!208 = !{i1 false, !7, i1 false, i2 1}
!209 = distinct !{!209, !29}
!210 = distinct !{!210, !29}
