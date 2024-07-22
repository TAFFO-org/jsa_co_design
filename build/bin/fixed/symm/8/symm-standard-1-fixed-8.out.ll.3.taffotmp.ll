; ModuleID = './build/bin/fixed/symm/8/symm-standard-1-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/symm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [47 x i8] c"target('C') scalar(range(0.0,43.830002) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [32 x i8] c"scalar(range(-999.0,1.8) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [29 x i8] c"scalar(range(0.1,2.5) final)\00", section "llvm.metadata", !taffo.info !0
@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.6 = private unnamed_addr constant [20 x i8] c"scalar(range(0,10))\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata", !taffo.info !0
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
  %C = alloca [10 x [16 x float]], align 4, !taffo.initweight !34, !taffo.info !39, !taffo.target !40
  %A = alloca [10 x [10 x float]], align 4, !taffo.initweight !34, !taffo.info !41
  %B = alloca [10 x [16 x float]], align 4, !taffo.initweight !34, !taffo.info !43
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !45, !taffo.info !35
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !45, !taffo.info !37
  %C3 = bitcast [10 x [16 x float]]* %C to i8*, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %A4 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.initweight !45, !taffo.info !41
  %B5 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.initweight !45, !taffo.info !43
  %arraydecay = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arraydecay6 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41
  %arraydecay7 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  call void @init_array.2(i32 noundef 10, i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [16 x float]* noundef %arraydecay7), !taffo.initweight !45, !taffo.info !35, !taffo.originalCall !46, !taffo.constinfo !47
  call void @timer_start(), !taffo.constinfo !48
  %0 = load float, float* %alpha, align 4, !taffo.initweight !45, !taffo.info !35
  %1 = load float, float* %beta, align 4, !taffo.initweight !45, !taffo.info !37
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arraydecay9 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41
  %arraydecay10 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  call void @kernel_symm.1(i32 noundef 10, i32 noundef 16, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9, [16 x float]* noundef %arraydecay10), !taffo.initweight !49, !taffo.info !35, !taffo.originalCall !50, !taffo.constinfo !47
  call void @timer_stop(), !taffo.constinfo !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !53
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp12 = icmp slt i32 %j.0, 16, !taffo.info !53
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !39, !taffo.target !40
  %2 = load float, float* %arrayidx14, align 4, !taffo.initweight !57, !taffo.info !39, !taffo.target !40
  %arrayidx15 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !6
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
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !66 !taffo.funinfo !67 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.equivalentChild !70 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !71
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.initweight !34, !taffo.info !76
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !49, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end17, !taffo.initweight !57, !taffo.info !76

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !77
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !49, !taffo.info !77
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !57, !taffo.info !77

for.body5:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !76
  %rem = srem i32 %add, 100, !taffo.initweight !57, !taffo.info !76, !taffo.constinfo !27
  %conv = sitofp i32 %rem to float, !taffo.initweight !58, !taffo.info !76
  %conv6 = sitofp i32 %m to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !79, !taffo.info !76
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !49, !taffo.info !80
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !80
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !57, !taffo.info !80
  %add8 = add nsw i32 %n, %i.0, !taffo.initweight !49, !taffo.info !76
  %sub = sub nsw i32 %add8, %j.0, !taffo.initweight !49, !taffo.info !77
  %rem9 = srem i32 %sub, 100, !taffo.initweight !57, !taffo.info !77, !taffo.constinfo !27
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !58, !taffo.info !77
  %conv11 = sitofp i32 %m to float
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !79, !taffo.info !77
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !49, !taffo.info !80
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !80
  store float %div12, float* %arrayidx14, align 4, !taffo.initweight !57, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !49, !taffo.info !77, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !81

for.end:                                          ; preds = %for.cond3
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.initweight !49, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !82

for.end17:                                        ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc46, %for.end17
  %i.1 = phi i32 [ 0, %for.end17 ], [ %inc47, %for.inc46 ], !taffo.initweight !34, !taffo.info !76
  %cmp19 = icmp slt i32 %i.1, %m, !taffo.initweight !49, !taffo.info !76
  br i1 %cmp19, label %for.body21, label %for.end48, !taffo.initweight !57, !taffo.info !76

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.initweight !34, !taffo.info !77
  %cmp23 = icmp sle i32 %j.1, %i.1, !taffo.initweight !49, !taffo.info !76
  br i1 %cmp23, label %for.body25, label %for.end35, !taffo.initweight !57, !taffo.info !76

for.body25:                                       ; preds = %for.cond22
  %add26 = add nsw i32 %i.1, %j.1, !taffo.initweight !49, !taffo.info !76
  %rem27 = srem i32 %add26, 100, !taffo.initweight !57, !taffo.info !76, !taffo.constinfo !27
  %conv28 = sitofp i32 %rem27 to float, !taffo.initweight !58, !taffo.info !76
  %conv29 = sitofp i32 %m to float
  %div30 = fdiv float %conv28, %conv29, !taffo.initweight !79, !taffo.info !76
  %arrayidx31 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.initweight !49, !taffo.info !80
  %arrayidx32 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx31, i32 0, i32 %j.1, !taffo.initweight !49, !taffo.info !80
  store float %div30, float* %arrayidx32, align 4, !taffo.initweight !57, !taffo.info !80
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %j.1, 1, !taffo.initweight !49, !taffo.info !77, !taffo.constinfo !27
  br label %for.cond22, !llvm.loop !83

for.end35:                                        ; preds = %for.cond22
  %add36 = add nsw i32 %i.1, 1, !taffo.initweight !49, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %j.2 = phi i32 [ %add36, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.initweight !34, !taffo.info !77
  %cmp38 = icmp slt i32 %j.2, %m, !taffo.initweight !49, !taffo.info !77
  br i1 %cmp38, label %for.body40, label %for.end45, !taffo.initweight !57, !taffo.info !77

for.body40:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.initweight !49, !taffo.info !80
  %arrayidx42 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx41, i32 0, i32 %j.2, !taffo.initweight !49, !taffo.info !80
  store float -9.990000e+02, float* %arrayidx42, align 4, !taffo.initweight !57, !taffo.info !80, !taffo.constinfo !84
  br label %for.inc43

for.inc43:                                        ; preds = %for.body40
  %inc44 = add nsw i32 %j.2, 1, !taffo.initweight !49, !taffo.info !77, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !87

for.end45:                                        ; preds = %for.cond37
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %i.1, 1, !taffo.initweight !49, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond18, !llvm.loop !88

for.end48:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.equivalentChild !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ]
  %cmp = icmp slt i32 %i.0, %m
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc34, %for.inc33 ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %temp2.0 = phi float [ 0.000000e+00, %for.body3 ], [ %add18, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %i.0
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx7, align 4
  %mul = fmul float %alpha, %0
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx9, align 4
  %mul10 = fmul float %mul, %1
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %k.0
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx12, align 4
  %add = fadd float %2, %mul10
  store float %add, float* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0
  %3 = load float, float* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx15, i32 0, i32 %k.0
  %4 = load float, float* %arrayidx16, align 4
  %mul17 = fmul float %3, %4
  %add18 = fadd float %temp2.0, %mul17
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !90

for.end:                                          ; preds = %for.cond4
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0
  %arrayidx20 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i32 0, i32 %j.0
  %5 = load float, float* %arrayidx20, align 4
  %mul21 = fmul float %beta, %5
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0
  %6 = load float, float* %arrayidx23, align 4
  %mul24 = fmul float %alpha, %6
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %i.0
  %7 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %mul24, %7
  %add28 = fadd float %mul21, %mul27
  %mul29 = fmul float %alpha, %temp2.0
  %add30 = fadd float %add28, %mul29
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0
  %arrayidx32 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx31, i32 0, i32 %j.0
  store float %add30, float* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %inc34 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !91

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !92

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !93 !taffo.funinfo !94 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !99
  %add = add nsw i32 %mul, %j.0, !taffo.info !99
  %rem = srem i32 %add, 20, !taffo.info !99, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !97
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !101
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !65
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !102

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !103

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm.1(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !104 !taffo.funinfo !105 !taffo.sourceFunction !50 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc34, %for.inc33 ], !taffo.info !53
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !53
  %temp2.0 = phi float [ 0.000000e+00, %for.body3 ], [ %add18, %for.inc ], !taffo.info !106
  %cmp5 = icmp slt i32 %k.0, %i.0, !taffo.info !99
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !79, !taffo.info !43
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !108, !taffo.info !43
  %0 = load float, float* %arrayidx7, align 4, !taffo.initweight !109, !taffo.info !43
  %mul = fmul float %alpha, %0, !taffo.initweight !79, !taffo.info !110
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !79, !taffo.info !41
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.initweight !108, !taffo.info !41
  %1 = load float, float* %arrayidx9, align 4, !taffo.initweight !109, !taffo.info !41
  %mul10 = fmul float %mul, %1, !taffo.initweight !108, !taffo.info !112
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %k.0, !taffo.initweight !79, !taffo.info !39
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.initweight !108, !taffo.info !39
  %2 = load float, float* %arrayidx12, align 4, !taffo.initweight !109, !taffo.info !39
  %add = fadd float %2, %mul10, !taffo.initweight !109, !taffo.info !114
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !109, !taffo.info !39
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0, !taffo.initweight !79, !taffo.info !43
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !108, !taffo.info !43
  %3 = load float, float* %arrayidx14, align 4, !taffo.initweight !109, !taffo.info !43
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !79, !taffo.info !41
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.initweight !108, !taffo.info !41
  %4 = load float, float* %arrayidx16, align 4, !taffo.initweight !109, !taffo.info !41
  %mul17 = fmul float %3, %4, !taffo.initweight !116, !taffo.info !117
  %add18 = fadd float %temp2.0, %mul17, !taffo.initweight !118, !taffo.info !117
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !119

for.end:                                          ; preds = %for.cond4
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !79, !taffo.info !39
  %arrayidx20 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i32 0, i32 %j.0, !taffo.initweight !108, !taffo.info !39
  %5 = load float, float* %arrayidx20, align 4, !taffo.initweight !109, !taffo.info !39
  %mul21 = fmul float %beta, %5, !taffo.initweight !79, !taffo.info !120
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !79, !taffo.info !43
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.initweight !108, !taffo.info !43
  %6 = load float, float* %arrayidx23, align 4, !taffo.initweight !109, !taffo.info !43
  %mul24 = fmul float %alpha, %6, !taffo.initweight !79, !taffo.info !110
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !79, !taffo.info !41
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %i.0, !taffo.initweight !108, !taffo.info !41
  %7 = load float, float* %arrayidx26, align 4, !taffo.initweight !109, !taffo.info !41
  %mul27 = fmul float %mul24, %7, !taffo.initweight !108, !taffo.info !112
  %add28 = fadd float %mul21, %mul27, !taffo.initweight !108, !taffo.info !122
  %mul29 = fmul float %alpha, %temp2.0, !taffo.initweight !79, !taffo.info !112
  %add30 = fadd float %add28, %mul29, !taffo.initweight !108, !taffo.info !124
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !79, !taffo.info !39
  %arrayidx32 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx31, i32 0, i32 %j.0, !taffo.initweight !108, !taffo.info !39
  store float %add30, float* %arrayidx32, align 4, !taffo.initweight !109, !taffo.info !35
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %inc34 = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !126

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !127

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !128 !taffo.funinfo !105 !taffo.sourceFunction !46 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !58, !taffo.info !35, !taffo.constinfo !71
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !58, !taffo.info !37, !taffo.constinfo !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.initweight !34, !taffo.info !129
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !49, !taffo.info !130
  br i1 %cmp, label %for.body, label %for.end17, !taffo.initweight !57, !taffo.info !76

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !131
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !49, !taffo.info !130
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !57, !taffo.info !77

for.body5:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !133
  %rem = srem i32 %add, 100, !taffo.initweight !57, !taffo.info !133, !taffo.constinfo !27
  %conv = sitofp i32 %rem to float, !taffo.initweight !58, !taffo.info !133
  %conv6 = sitofp i32 %m to float, !taffo.info !22
  %div = fdiv float %conv, %conv6, !taffo.initweight !79, !taffo.info !135
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !49, !taffo.info !137
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !137
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !57, !taffo.info !80
  %add8 = add nsw i32 %n, %i.0, !taffo.initweight !49, !taffo.info !138
  %sub = sub nsw i32 %add8, %j.0, !taffo.initweight !49, !taffo.info !133
  %rem9 = srem i32 %sub, 100, !taffo.initweight !57, !taffo.info !133, !taffo.constinfo !27
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !58, !taffo.info !133
  %conv11 = sitofp i32 %m to float, !taffo.info !22
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !79, !taffo.info !135
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !49, !taffo.info !140
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !140
  store float %div12, float* %arrayidx14, align 4, !taffo.initweight !57, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !49, !taffo.info !141, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !143

for.end:                                          ; preds = %for.cond3
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.initweight !49, !taffo.info !144, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !145

for.end17:                                        ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc46, %for.end17
  %i.1 = phi i32 [ 0, %for.end17 ], [ %inc47, %for.inc46 ], !taffo.initweight !34, !taffo.info !129
  %cmp19 = icmp slt i32 %i.1, %m, !taffo.initweight !49, !taffo.info !130
  br i1 %cmp19, label %for.body21, label %for.end48, !taffo.initweight !57, !taffo.info !76

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.initweight !34, !taffo.info !131
  %cmp23 = icmp sle i32 %j.1, %i.1, !taffo.initweight !49, !taffo.info !130
  br i1 %cmp23, label %for.body25, label %for.end35, !taffo.initweight !57, !taffo.info !76

for.body25:                                       ; preds = %for.cond22
  %add26 = add nsw i32 %i.1, %j.1, !taffo.initweight !49, !taffo.info !133
  %rem27 = srem i32 %add26, 100, !taffo.initweight !57, !taffo.info !133, !taffo.constinfo !27
  %conv28 = sitofp i32 %rem27 to float, !taffo.initweight !58, !taffo.info !133
  %conv29 = sitofp i32 %m to float, !taffo.info !22
  %div30 = fdiv float %conv28, %conv29, !taffo.initweight !79, !taffo.info !135
  %arrayidx31 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.initweight !49, !taffo.info !146
  %arrayidx32 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx31, i32 0, i32 %j.1, !taffo.initweight !49, !taffo.info !146
  store float %div30, float* %arrayidx32, align 4, !taffo.initweight !57, !taffo.info !80
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %j.1, 1, !taffo.initweight !49, !taffo.info !141, !taffo.constinfo !27
  br label %for.cond22, !llvm.loop !147

for.end35:                                        ; preds = %for.cond22
  %add36 = add nsw i32 %i.1, 1, !taffo.initweight !49, !taffo.info !144, !taffo.constinfo !27
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %j.2 = phi i32 [ %add36, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.initweight !34, !taffo.info !131
  %cmp38 = icmp slt i32 %j.2, %m, !taffo.initweight !49, !taffo.info !130
  br i1 %cmp38, label %for.body40, label %for.end45, !taffo.initweight !57, !taffo.info !77

for.body40:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.initweight !49, !taffo.info !146
  %arrayidx42 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx41, i32 0, i32 %j.2, !taffo.initweight !49, !taffo.info !146
  store float -9.990000e+02, float* %arrayidx42, align 4, !taffo.initweight !57, !taffo.info !80, !taffo.constinfo !84
  br label %for.inc43

for.inc43:                                        ; preds = %for.body40
  %inc44 = add nsw i32 %j.2, 1, !taffo.initweight !49, !taffo.info !141, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !148

for.end45:                                        ; preds = %for.cond37
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %i.1, 1, !taffo.initweight !49, !taffo.info !144, !taffo.constinfo !27
  br label %for.cond18, !llvm.loop !149

for.end48:                                        ; preds = %for.cond18
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
!7 = !{double 0.000000e+00, double 0x4045EA3D816ACEAB}
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
!42 = !{double -9.990000e+02, double 1.800000e+00}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 1.000000e-01, double 2.500000e+00}
!45 = !{i32 1}
!46 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [16 x float]*)* @init_array}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i32 2}
!50 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [16 x float]*)* @kernel_symm}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.100000e+01}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.000000e+00}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 1.870000e+02}
!57 = !{i32 3}
!58 = !{i32 4}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 1.870000e+02}
!61 = distinct !{!61, !29}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 1.100000e+01}
!64 = distinct !{!64, !29}
!65 = !{i1 false, i1 false, i1 false, i1 false}
!66 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!67 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!68 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!69 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!70 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*, [16 x float]*)* @init_array.2}
!71 = !{!72, i1 false}
!72 = !{i1 false, !36, i1 false, i2 0}
!73 = !{!74, i1 false}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!76 = !{i1 false, !9, i1 false, i2 1}
!77 = !{i1 false, !78, i1 false, i2 1}
!78 = !{double 0.000000e+00, double 1.600000e+01}
!79 = !{i32 5}
!80 = !{i1 false, i1 false, i1 false, i2 1}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = !{!85, i1 false}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double -9.990000e+02, double -9.990000e+02}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*, [16 x float]*)* @kernel_symm.1}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = !{i32 -1, i32 -1, i32 -1}
!94 = !{i32 1, !22, i32 1, !95, i32 1, !6}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 1.600000e+01, double 1.600000e+01}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.000000e+00, double 1.000000e+00}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 0.000000e+00, double 0.000000e+00}
!101 = !{i1 false, i1 false, i1 false}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!105 = !{i32 1, !22, i32 1, !95, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double -2.497500e+03, double 4.500000e+00}
!108 = !{i32 6}
!109 = !{i32 7}
!110 = !{i1 false, !111, i1 false, i2 -1}
!111 = !{double 0x3FC3333333333334, double 3.750000e+00}
!112 = !{i1 false, !113, i1 false, i2 -1}
!113 = !{double -3.746250e+03, double 6.750000e+00}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double -3.746250e+03, double 0x40494A3D816ACEAB}
!116 = !{i32 8}
!117 = !{i1 false, !107, i1 false, i2 -1}
!118 = !{i32 9}
!119 = distinct !{!119, !29}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 0x404A4C49CE802B33}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double -3.746250e+03, double 0x404DAC49CE802B33}
!124 = !{i1 false, !125, i1 false, i2 -1}
!125 = !{double -7.492500e+03, double 0x40508624E740159A}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!129 = !{i1 false, !52, i1 false, i2 1}
!130 = !{i1 false, !54, i1 false, i2 1}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double 0.000000e+00, double 1.700000e+01}
!133 = !{i1 false, !134, i1 false, i2 1}
!134 = !{double 0.000000e+00, double 2.600000e+01}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 2.600000e+00}
!137 = !{i1 false, !7, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 1.600000e+01, double 2.600000e+01}
!140 = !{i1 false, !44, i1 false, i2 1}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 1.000000e+00, double 1.700000e+01}
!143 = distinct !{!143, !29}
!144 = !{i1 false, !63, i1 false, i2 1}
!145 = distinct !{!145, !29}
!146 = !{i1 false, !42, i1 false, i2 1}
!147 = distinct !{!147, !29}
!148 = distinct !{!148, !29}
!149 = distinct !{!149, !29}
