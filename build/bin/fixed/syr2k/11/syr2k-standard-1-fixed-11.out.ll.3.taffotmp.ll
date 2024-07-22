; ModuleID = './build/bin/fixed/syr2k/11/syr2k-standard-1-fixed-11.out.ll.2.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [18 x i8] c"./sources/syr2k.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [46 x i8] c"target('C') scalar(range(0.0,9.046875) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,0.9375) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,0.9) final)\00", section "llvm.metadata", !taffo.info !0
@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

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
  %alpha = alloca float, align 4, !taffo.initweight !34, !taffo.info !35
  %beta = alloca float, align 4, !taffo.initweight !34, !taffo.info !37
  %C = alloca [16 x [16 x float]], align 4, !taffo.initweight !34, !taffo.info !39, !taffo.target !40
  %A = alloca [16 x [10 x float]], align 4, !taffo.initweight !34, !taffo.info !41
  %B = alloca [16 x [10 x float]], align 4, !taffo.initweight !34, !taffo.info !43
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !45, !taffo.info !35
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !45, !taffo.info !37
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.initweight !45, !taffo.info !41
  %B5 = bitcast [16 x [10 x float]]* %B to i8*, !taffo.initweight !45, !taffo.info !43
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arraydecay6 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  call void @init_array.2(i32 noundef 16, i32 noundef 10, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.initweight !45, !taffo.info !35, !taffo.originalCall !46, !taffo.constinfo !47
  call void @timer_start(), !taffo.constinfo !48
  %0 = load float, float* %alpha, align 4, !taffo.initweight !45, !taffo.info !35
  %1 = load float, float* %beta, align 4, !taffo.initweight !45, !taffo.info !37
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41
  %arraydecay10 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  call void @kernel_syr2k.1(i32 noundef 16, i32 noundef 10, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9, [10 x float]* noundef %arraydecay10), !taffo.initweight !49, !taffo.info !35, !taffo.originalCall !50, !taffo.constinfo !47
  call void @timer_stop(), !taffo.constinfo !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !53
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp12 = icmp slt i32 %j.0, 16, !taffo.info !53
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !39, !taffo.target !40
  %2 = load float, float* %arrayidx14, align 4, !taffo.initweight !57, !taffo.info !39, !taffo.target !40
  %arrayidx15 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !6
  store float %2, float* %arrayidx16, align 4, !taffo.initweight !58, !taffo.info !39, !taffo.target !40
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !61

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !62, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !64

for.end19:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !66 !taffo.funinfo !67 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.equivalentChild !70 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !71
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.initweight !34, !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !49, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end18, !taffo.initweight !57, !taffo.info !76

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !78
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !49, !taffo.info !78
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !57, !taffo.info !78

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !76
  %add = add nsw i32 %mul, 1, !taffo.initweight !57, !taffo.info !76, !taffo.constinfo !27
  %rem = srem i32 %add, %n, !taffo.initweight !58, !taffo.info !76
  %conv = sitofp i32 %rem to float, !taffo.initweight !79, !taffo.info !76
  %conv6 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !80, !taffo.info !76
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !49, !taffo.info !81
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !81
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !57, !taffo.info !81
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !76
  %add9 = add nsw i32 %mul8, 2, !taffo.initweight !57, !taffo.info !76, !taffo.constinfo !27
  %rem10 = srem i32 %add9, %m, !taffo.initweight !58, !taffo.info !76
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !79, !taffo.info !76
  %conv12 = sitofp i32 %m to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !80, !taffo.info !76
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.initweight !49, !taffo.info !81
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !81
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !57, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !49, !taffo.info !78, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !82

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.initweight !49, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !83

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.initweight !34, !taffo.info !76
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.initweight !49, !taffo.info !76
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.initweight !57, !taffo.info !76

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.initweight !34, !taffo.info !78
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.initweight !49, !taffo.info !78
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.initweight !57, !taffo.info !78

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.initweight !49, !taffo.info !76
  %add28 = add nsw i32 %mul27, 3, !taffo.initweight !57, !taffo.info !76, !taffo.constinfo !27
  %rem29 = srem i32 %add28, %n, !taffo.initweight !58, !taffo.info !76
  %conv30 = sitofp i32 %rem29 to float, !taffo.initweight !79, !taffo.info !76
  %conv31 = sitofp i32 %m to float
  %div32 = fdiv float %conv30, %conv31, !taffo.initweight !80, !taffo.info !76
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.initweight !49, !taffo.info !81
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.initweight !49, !taffo.info !81
  store float %div32, float* %arrayidx34, align 4, !taffo.initweight !57, !taffo.info !81
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.initweight !49, !taffo.info !78, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !84

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.initweight !49, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond19, !llvm.loop !85

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.equivalentChild !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp sle i32 %j.0, %i.0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx4, align 4
  %mul = fmul float %0, %beta
  store float %mul, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !87

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ]
  %cmp6 = icmp slt i32 %k.0, %m
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ]
  %cmp9 = icmp sle i32 %j.1, %i.0
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %1, %alpha
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0
  %2 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %2
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %j.1
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %k.0
  %3 = load float, float* %arrayidx18, align 4
  %mul19 = fmul float %3, %alpha
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %k.0
  %4 = load float, float* %arrayidx21, align 4
  %mul22 = fmul float %mul19, %4
  %add = fadd float %mul16, %mul22
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %j.1
  %5 = load float, float* %arrayidx24, align 4
  %add25 = fadd float %5, %add
  store float %add25, float* %arrayidx24, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !88

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !89

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !90

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !31 !taffo.funinfo !91 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !94
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !94
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !96
  %add = add nsw i32 %mul, %j.0, !taffo.info !96
  %rem = srem i32 %add, 20, !taffo.info !96, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !94
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !65
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !98
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !99

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !100

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.1(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !101 !taffo.funinfo !102 !taffo.sourceFunction !50 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !94
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !53
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !79, !taffo.info !39
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !80, !taffo.info !39
  %0 = load float, float* %arrayidx4, align 4, !taffo.initweight !103, !taffo.info !39
  %mul = fmul float %0, %beta, !taffo.initweight !79, !taffo.info !104
  store float %mul, float* %arrayidx4, align 4, !taffo.initweight !80, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !106

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !53
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !94
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !53
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !53
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.initweight !79, !taffo.info !41
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.initweight !80, !taffo.info !41
  %1 = load float, float* %arrayidx12, align 4, !taffo.initweight !103, !taffo.info !41
  %mul13 = fmul float %1, %alpha, !taffo.initweight !79, !taffo.info !107
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.initweight !79, !taffo.info !43
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.initweight !80, !taffo.info !43
  %2 = load float, float* %arrayidx15, align 4, !taffo.initweight !103, !taffo.info !43
  %mul16 = fmul float %mul13, %2, !taffo.initweight !80, !taffo.info !109
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %j.1, !taffo.initweight !79, !taffo.info !43
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %k.0, !taffo.initweight !80, !taffo.info !43
  %3 = load float, float* %arrayidx18, align 4, !taffo.initweight !103, !taffo.info !43
  %mul19 = fmul float %3, %alpha, !taffo.initweight !79, !taffo.info !111
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !79, !taffo.info !41
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %k.0, !taffo.initweight !80, !taffo.info !41
  %4 = load float, float* %arrayidx21, align 4, !taffo.initweight !103, !taffo.info !41
  %mul22 = fmul float %mul19, %4, !taffo.initweight !80, !taffo.info !109
  %add = fadd float %mul16, %mul22, !taffo.initweight !103, !taffo.info !113
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !79, !taffo.info !39
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.initweight !80, !taffo.info !39
  %5 = load float, float* %arrayidx24, align 4, !taffo.initweight !103, !taffo.info !39
  %add25 = fadd float %5, %add, !taffo.initweight !115, !taffo.info !116
  store float %add25, float* %arrayidx24, align 4, !taffo.initweight !103, !taffo.info !39
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !118

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !119

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !120

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !121 !taffo.funinfo !102 !taffo.sourceFunction !46 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !58, !taffo.info !35, !taffo.constinfo !71
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !58, !taffo.info !37, !taffo.constinfo !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.initweight !34, !taffo.info !122
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !49, !taffo.info !123
  br i1 %cmp, label %for.body, label %for.end18, !taffo.initweight !57, !taffo.info !76

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !124
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !49, !taffo.info !123
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !57, !taffo.info !78

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !126
  %add = add nsw i32 %mul, 1, !taffo.initweight !57, !taffo.info !128, !taffo.constinfo !27
  %rem = srem i32 %add, %n, !taffo.initweight !58, !taffo.info !130
  %conv = sitofp i32 %rem to float, !taffo.initweight !79, !taffo.info !130
  %conv6 = sitofp i32 %n to float, !taffo.info !92
  %div = fdiv float %conv, %conv6, !taffo.initweight !80, !taffo.info !132
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !49, !taffo.info !132
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !132
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !57, !taffo.info !81
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !126
  %add9 = add nsw i32 %mul8, 2, !taffo.initweight !57, !taffo.info !133, !taffo.constinfo !27
  %rem10 = srem i32 %add9, %m, !taffo.initweight !58, !taffo.info !135
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !79, !taffo.info !135
  %conv12 = sitofp i32 %m to float, !taffo.info !22
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !80, !taffo.info !137
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.initweight !49, !taffo.info !137
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !137
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !57, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !49, !taffo.info !138, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !140

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.initweight !49, !taffo.info !141, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !142

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.initweight !34, !taffo.info !122
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.initweight !49, !taffo.info !123
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.initweight !57, !taffo.info !76

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.initweight !34, !taffo.info !124
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.initweight !49, !taffo.info !143
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.initweight !57, !taffo.info !78

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.initweight !49, !taffo.info !126
  %add28 = add nsw i32 %mul27, 3, !taffo.initweight !57, !taffo.info !144, !taffo.constinfo !27
  %rem29 = srem i32 %add28, %n, !taffo.initweight !58, !taffo.info !130
  %conv30 = sitofp i32 %rem29 to float, !taffo.initweight !79, !taffo.info !130
  %conv31 = sitofp i32 %m to float, !taffo.info !22
  %div32 = fdiv float %conv30, %conv31, !taffo.initweight !80, !taffo.info !146
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.initweight !49, !taffo.info !148
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.initweight !49, !taffo.info !148
  store float %div32, float* %arrayidx34, align 4, !taffo.initweight !57, !taffo.info !81
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.initweight !49, !taffo.info !138, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !149

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.initweight !49, !taffo.info !141, !taffo.constinfo !27
  br label %for.cond19, !llvm.loop !150

for.end40:                                        ; preds = %for.cond19
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
!3 = !{double 0.000000e+00, double 1.210000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x4022180000000000}
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
!36 = !{double 1.500000e+00, double 1.500000e+00}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 1.200000e+00, double 1.200000e+00}
!39 = !{i1 false, !7, i1 false, i2 -1}
!40 = !{!"C"}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 9.375000e-01}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 0.000000e+00, double 9.000000e-01}
!45 = !{i32 1}
!46 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i32 2}
!50 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.700000e+01}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.000000e+00}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 2.890000e+02}
!57 = !{i32 3}
!58 = !{i32 4}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.890000e+02}
!61 = distinct !{!61, !29}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 1.700000e+01}
!64 = distinct !{!64, !29}
!65 = !{i1 false, i1 false, i1 false}
!66 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!67 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!68 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!69 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!70 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [10 x float]*)* @init_array.2}
!71 = !{!72, i1 false}
!72 = !{i1 false, !36, i1 false, i2 0}
!73 = !{!74, i1 false}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!76 = !{i1 false, !77, i1 false, i2 1}
!77 = !{double 0.000000e+00, double 1.600000e+01}
!78 = !{i1 false, !9, i1 false, i2 1}
!79 = !{i32 5}
!80 = !{i32 6}
!81 = !{i1 false, i1 false, i1 false, i2 1}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [10 x float]*)* @kernel_syr2k.1}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = !{i32 1, !92, i32 1, !6}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 1.600000e+01, double 1.600000e+01}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 1.000000e+00, double 1.000000e+00}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 0.000000e+00, double 0.000000e+00}
!98 = !{i1 false, i1 false, i1 false, i1 false}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!102 = !{i32 1, !92, i32 1, !22, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43}
!103 = !{i32 7}
!104 = !{i1 false, !105, i1 false, i2 -1}
!105 = !{double 0.000000e+00, double 0x4025B66666666666}
!106 = distinct !{!106, !29}
!107 = !{i1 false, !108, i1 false, i2 -1}
!108 = !{double 0.000000e+00, double 1.406250e+00}
!109 = !{i1 false, !110, i1 false, i2 -1}
!110 = !{double 0.000000e+00, double 0x3FF4400000000000}
!111 = !{i1 false, !112, i1 false, i2 -1}
!112 = !{double 0.000000e+00, double 1.350000e+00}
!113 = !{i1 false, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 2.531250e+00}
!115 = !{i32 8}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 0x4027280000000000}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!122 = !{i1 false, !52, i1 false, i2 1}
!123 = !{i1 false, !54, i1 false, i2 1}
!124 = !{i1 false, !125, i1 false, i2 1}
!125 = !{double 0.000000e+00, double 1.100000e+01}
!126 = !{i1 false, !127, i1 false, i2 1}
!127 = !{double 0.000000e+00, double 1.600000e+02}
!128 = !{i1 false, !129, i1 false, i2 1}
!129 = !{double 1.000000e+00, double 1.610000e+02}
!130 = !{i1 false, !131, i1 false, i2 1}
!131 = !{double 0.000000e+00, double 1.500000e+01}
!132 = !{i1 false, !42, i1 false, i2 1}
!133 = !{i1 false, !134, i1 false, i2 1}
!134 = !{double 2.000000e+00, double 1.620000e+02}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 9.000000e+00}
!137 = !{i1 false, !44, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 1.000000e+00, double 1.100000e+01}
!140 = distinct !{!140, !29}
!141 = !{i1 false, !63, i1 false, i2 1}
!142 = distinct !{!142, !29}
!143 = !{i1 false, !95, i1 false, i2 1}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 3.000000e+00, double 1.630000e+02}
!146 = !{i1 false, !147, i1 false, i2 1}
!147 = !{double 0.000000e+00, double 1.500000e+00}
!148 = !{i1 false, !7, i1 false, i2 1}
!149 = distinct !{!149, !29}
!150 = distinct !{!150, !29}
