; ModuleID = './build/bin/fixed/bicg/24/bicg-standard-1-fixed-24.out.ll.2.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.954545) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/bicg.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [46 x i8] c"target('s') scalar(range(0.0,6.840909) final)\00", section "llvm.metadata", !taffo.info !4
@.str.3 = private unnamed_addr constant [46 x i8] c"target('q') scalar(range(0.0,6.045455) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.95) final)\00", section "llvm.metadata", !taffo.info !0
@s_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@q_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !8
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 22))\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !10
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !12

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !21 !taffo.funinfo !22 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !23
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !26
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !32 !taffo.funinfo !32 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !32 !taffo.funinfo !32 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !33 !taffo.funinfo !34 !taffo.start !35 {
entry:
  %A = alloca [22 x [20 x float]], align 4, !taffo.initweight !36, !taffo.info !37
  %s = alloca [20 x float], align 4, !taffo.initweight !36, !taffo.info !39, !taffo.target !40
  %q = alloca [22 x float], align 4, !taffo.initweight !36, !taffo.info !41, !taffo.target !42
  %p = alloca [20 x float], align 4, !taffo.initweight !36, !taffo.info !43
  %r = alloca [22 x float], align 4, !taffo.initweight !36, !taffo.info !37
  %A1 = bitcast [22 x [20 x float]]* %A to i8*, !taffo.initweight !45, !taffo.info !37
  %s2 = bitcast [20 x float]* %s to i8*, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %q3 = bitcast [22 x float]* %q to i8*, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  %p4 = bitcast [20 x float]* %p to i8*, !taffo.initweight !45, !taffo.info !43
  %r5 = bitcast [22 x float]* %r to i8*, !taffo.initweight !45, !taffo.info !37
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !37
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !45, !taffo.info !37
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  call void @init_array.2(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.initweight !46, !taffo.info !37, !taffo.originalCall !47, !taffo.constinfo !48
  call void @timer_start(), !taffo.constinfo !49
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !37
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !45, !taffo.info !37
  call void @kernel_bicg.1(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14), !taffo.initweight !46, !taffo.info !37, !taffo.originalCall !50, !taffo.constinfo !48
  call void @timer_stop(), !taffo.constinfo !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 %i.0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !46, !taffo.info !39, !taffo.target !40
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %i.0, !taffo.info !6
  store float %0, float* %arrayidx15, align 4, !taffo.initweight !55, !taffo.info !39, !taffo.target !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc22, %for.end
  %i16.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !59
  %cmp18 = icmp slt i32 %i16.0, 22, !taffo.info !53
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 %i16.0, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  %1 = load float, float* %arrayidx20, align 4, !taffo.initweight !46, !taffo.info !41, !taffo.target !42
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %i16.0, !taffo.info !8
  store float %1, float* %arrayidx21, align 4, !taffo.initweight !55, !taffo.info !41, !taffo.target !42
  br label %for.inc22

for.inc22:                                        ; preds = %for.body19
  %inc23 = add nsw i32 %i16.0, 1, !taffo.info !61, !taffo.constinfo !29
  br label %for.cond17, !llvm.loop !63

for.end24:                                        ; preds = %for.cond17
  call void @print_array(i32 noundef 20, i32 noundef 22, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0)), !taffo.constinfo !64
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !65 !taffo.funinfo !66 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !67 !taffo.funinfo !68 !taffo.equivalentChild !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !36, !taffo.info !70
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !46, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !55, !taffo.info !70

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.initweight !46, !taffo.info !70
  %conv = sitofp i32 %rem to float, !taffo.initweight !55, !taffo.info !70
  %conv3 = sitofp i32 %m to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !72, !taffo.info !70
  %arrayidx = getelementptr inbounds float, float* %p, i32 %i.0, !taffo.initweight !46, !taffo.info !73
  store float %div, float* %arrayidx, align 4, !taffo.initweight !55, !taffo.info !73
  %arrayidx4 = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.initweight !46, !taffo.info !73
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !46, !taffo.info !70, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.initweight !36, !taffo.info !70
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.initweight !46, !taffo.info !70
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !55, !taffo.info !70

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.initweight !46, !taffo.info !70
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !55, !taffo.info !70
  %conv11 = sitofp i32 %n to float
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !72, !taffo.info !70
  %arrayidx13 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.initweight !46, !taffo.info !73
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !55, !taffo.info !73
  %arrayidx14 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !46, !taffo.info !73
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.initweight !36, !taffo.info !78
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.initweight !46, !taffo.info !78
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !55, !taffo.info !78

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.initweight !46, !taffo.info !78, !taffo.constinfo !29
  %mul = mul nsw i32 %i.1, %add, !taffo.initweight !46, !taffo.info !70
  %rem19 = srem i32 %mul, %n, !taffo.initweight !55, !taffo.info !70
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !72, !taffo.info !70
  %conv21 = sitofp i32 %n to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !80, !taffo.info !70
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !73
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.0, !taffo.initweight !46, !taffo.info !73
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !55, !taffo.info !73
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.initweight !46, !taffo.info !78, !taffo.constinfo !29
  br label %for.cond15, !llvm.loop !81

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.initweight !46, !taffo.info !70, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !82

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !67 !taffo.funinfo !68 !taffo.equivalentChild !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %m
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !80, !taffo.info !73, !taffo.constinfo !74
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ]
  %cmp2 = icmp slt i32 %i.1, %n
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %q, i32 %i.1
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !80, !taffo.info !73, !taffo.constinfo !74
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ]
  %cmp6 = icmp slt i32 %j.0, %m
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %s, i32 %j.0
  %0 = load float, float* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds float, float* %r, i32 %i.1
  %1 = load float, float* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx11, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  %arrayidx12 = getelementptr inbounds float, float* %s, i32 %j.0
  store float %add, float* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1
  %3 = load float, float* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0
  %4 = load float, float* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds float, float* %p, i32 %j.0
  %5 = load float, float* %arrayidx16, align 4
  %mul17 = fmul float %4, %5
  %add18 = fadd float %3, %mul17
  %arrayidx19 = getelementptr inbounds float, float* %q, i32 %i.1
  store float %add18, float* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !85

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !86

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !87 !taffo.funinfo !88 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !75, !taffo.constinfo !29
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !93
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !95
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !96
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !53
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !93
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !75, !taffo.constinfo !29
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !93
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !95
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !8
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !8
  %conv14 = fpext float %5 to double, !taffo.info !8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !96
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond3, !llvm.loop !98

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !33 !taffo.funinfo !34 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.1(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !50 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.initweight !80, !taffo.info !39
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !80, !taffo.info !73, !taffo.constinfo !74
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !53
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !80, !taffo.info !41
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !80, !taffo.info !73, !taffo.constinfo !74
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !53
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !93
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.initweight !80, !taffo.info !39
  %0 = load float, float* %arrayidx8, align 4, !taffo.initweight !102, !taffo.info !39
  %arrayidx9 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.initweight !80, !taffo.info !37
  %1 = load float, float* %arrayidx9, align 4, !taffo.initweight !102, !taffo.info !37
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !80, !taffo.info !37
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !102, !taffo.info !37
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !103, !taffo.info !37
  %mul = fmul float %1, %2, !taffo.initweight !103, !taffo.info !104
  %add = fadd float %0, %mul, !taffo.initweight !103, !taffo.info !106
  %arrayidx12 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.initweight !80, !taffo.info !39
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !102, !taffo.info !39
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !80, !taffo.info !41
  %3 = load float, float* %arrayidx13, align 4, !taffo.initweight !102, !taffo.info !41
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !80, !taffo.info !37
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !102, !taffo.info !37
  %4 = load float, float* %arrayidx15, align 4, !taffo.initweight !103, !taffo.info !37
  %arrayidx16 = getelementptr inbounds float, float* %p, i32 %j.0, !taffo.initweight !80, !taffo.info !43
  %5 = load float, float* %arrayidx16, align 4, !taffo.initweight !102, !taffo.info !43
  %mul17 = fmul float %4, %5, !taffo.initweight !103, !taffo.info !108
  %add18 = fadd float %3, %mul17, !taffo.initweight !103, !taffo.info !110
  %arrayidx19 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !80, !taffo.info !41
  store float %add18, float* %arrayidx19, align 4, !taffo.initweight !102, !taffo.info !41
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !112

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !113

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !99 !taffo.funinfo !114 !taffo.sourceFunction !47 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !36, !taffo.info !115
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !46, !taffo.info !116
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !55, !taffo.info !70

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.initweight !46, !taffo.info !117
  %conv = sitofp i32 %rem to float, !taffo.initweight !55, !taffo.info !117
  %conv3 = sitofp i32 %m to float, !taffo.info !89
  %div = fdiv float %conv, %conv3, !taffo.initweight !72, !taffo.info !119
  %arrayidx = getelementptr inbounds float, float* %p, i32 %i.0, !taffo.initweight !46, !taffo.info !119
  store float %div, float* %arrayidx, align 4, !taffo.initweight !55, !taffo.info !73
  %arrayidx4 = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.initweight !46, !taffo.info !120
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !46, !taffo.info !121, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.initweight !36, !taffo.info !115
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.initweight !46, !taffo.info !116
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !55, !taffo.info !70

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.initweight !46, !taffo.info !123
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !55, !taffo.info !123
  %conv11 = sitofp i32 %n to float, !taffo.info !91
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !72, !taffo.info !124
  %arrayidx13 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.initweight !46, !taffo.info !126
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !55, !taffo.info !73
  %arrayidx14 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !46, !taffo.info !127
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.initweight !36, !taffo.info !123
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.initweight !46, !taffo.info !116
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !55, !taffo.info !78

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.initweight !46, !taffo.info !128, !taffo.constinfo !29
  %mul = mul nsw i32 %i.1, %add, !taffo.initweight !46, !taffo.info !129
  %rem19 = srem i32 %mul, %n, !taffo.initweight !55, !taffo.info !123
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !72, !taffo.info !123
  %conv21 = sitofp i32 %n to float, !taffo.info !91
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !80, !taffo.info !124
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !126
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.0, !taffo.initweight !46, !taffo.info !126
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !55, !taffo.info !73
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.initweight !46, !taffo.info !128, !taffo.constinfo !29
  br label %for.cond15, !llvm.loop !131

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.initweight !46, !taffo.info !121, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !132

for.end30:                                        ; preds = %for.cond5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x401B5D173FB7A5F4}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 0x40182E8BC169C23B}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.000000e+01}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.020000e+02}
!14 = !{i32 1, !"NumRegisterParameters", i32 0}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!21 = !{i32 -1}
!22 = !{i32 0, i1 false}
!23 = !{i1 false, !24}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 1.000000e+01, double 1.000000e+01}
!26 = !{!27, i1 false}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 2.000000e+00, double 2.000000e+00}
!29 = !{i1 false, i1 false}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{}
!33 = !{i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false}
!35 = !{i1 true}
!36 = !{i32 0}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 0x3FEE8BA1F4B1EE24}
!39 = !{i1 false, !7, i1 false, i2 -1}
!40 = !{!"s"}
!41 = !{i1 false, !9, i1 false, i2 -1}
!42 = !{!"q"}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 0.000000e+00, double 0x3FEE666666666666}
!45 = !{i32 1}
!46 = !{i32 2}
!47 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = !{i1 false}
!50 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 2.100000e+01}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.000000e+00}
!55 = !{i32 3}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 2.100000e+01}
!58 = distinct !{!58, !31}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 2.300000e+01}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.000000e+00, double 2.300000e+01}
!63 = distinct !{!63, !31}
!64 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!65 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!66 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!67 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!68 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!69 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array.2}
!70 = !{i1 false, !71, i1 false, i2 1}
!71 = !{double 0.000000e+00, double 2.200000e+01}
!72 = !{i32 4}
!73 = !{i1 false, i1 false, i1 false, i2 1}
!74 = !{!75, i1 false}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = distinct !{!77, !31}
!78 = !{i1 false, !79, i1 false, i2 1}
!79 = !{double 0.000000e+00, double 2.000000e+01}
!80 = !{i32 5}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !31}
!83 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg.1}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!88 = !{i32 1, !89, i32 1, !91, i32 1, !6, i32 1, !8}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 2.000000e+01, double 2.000000e+01}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 2.200000e+01, double 2.200000e+01}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 1.000000e+00, double 1.000000e+00}
!95 = !{i1 false, i1 false, i1 false}
!96 = !{i1 false, i1 false, i1 false, i1 false}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!100 = !{i32 1, !89, i32 1, !91, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43, i32 1, !37}
!101 = distinct !{!101, !31}
!102 = !{i32 6}
!103 = !{i32 7}
!104 = !{i1 false, !105, i1 false, i2 -1}
!105 = !{double 0.000000e+00, double 0x3FED2830F4FF15D6}
!106 = !{i1 false, !107, i1 false, i2 -1}
!107 = !{double 0.000000e+00, double 0x401F021D5E5788AF}
!108 = !{i1 false, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 0x3FED04A6A875D56F}
!110 = !{i1 false, !111, i1 false, i2 -1}
!111 = !{double 0.000000e+00, double 0x401BCF2096787CE9}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = !{i32 1, !89, i32 1, !91, i32 1, !37, i32 1, !37, i32 1, !43, i32 1, !39, i32 1, !41}
!115 = !{i1 false, !60, i1 false, i2 1}
!116 = !{i1 false, !54, i1 false, i2 1}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 0.000000e+00, double 1.900000e+01}
!119 = !{i1 false, !44, i1 false, i2 1}
!120 = !{i1 false, !7, i1 false, i2 1}
!121 = !{i1 false, !62, i1 false, i2 1}
!122 = distinct !{!122, !31}
!123 = !{i1 false, !52, i1 false, i2 1}
!124 = !{i1 false, !125, i1 false, i2 1}
!125 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!126 = !{i1 false, !38, i1 false, i2 1}
!127 = !{i1 false, !9, i1 false, i2 1}
!128 = !{i1 false, !57, i1 false, i2 1}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 4.620000e+02}
!131 = distinct !{!131, !31}
!132 = distinct !{!132, !31}
