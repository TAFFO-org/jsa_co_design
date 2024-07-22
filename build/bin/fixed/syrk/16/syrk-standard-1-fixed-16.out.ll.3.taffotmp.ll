; ModuleID = './build/bin/fixed/syrk/16/syrk-standard-1-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/syrk.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/syrk.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [46 x i8] c"target('C') scalar(range(0.0,7.291172) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,0.9375) final)\00", section "llvm.metadata", !taffo.info !0
@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

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
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !43, !taffo.info !35
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !43, !taffo.info !37
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.initweight !43, !taffo.info !41
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %arraydecay5 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41
  call void @init_array.2(i32 noundef 16, i32 noundef 10, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay5), !taffo.initweight !43, !taffo.info !35, !taffo.originalCall !44, !taffo.constinfo !45
  call void @timer_start(), !taffo.constinfo !46
  %0 = load float, float* %alpha, align 4, !taffo.initweight !43, !taffo.info !35
  %1 = load float, float* %beta, align 4, !taffo.initweight !43, !taffo.info !37
  %arraydecay6 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41
  call void @kernel_syrk.1(i32 noundef 16, i32 noundef 10, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.initweight !47, !taffo.info !35, !taffo.originalCall !48, !taffo.constinfo !45
  call void @timer_stop(), !taffo.constinfo !46
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !51
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !49
  %cmp9 = icmp sle i32 %j.0, %i.0, !taffo.info !51
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !47, !taffo.info !39, !taffo.target !40
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !53, !taffo.info !39, !taffo.target !40
  %arrayidx12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !6
  store float %2, float* %arrayidx13, align 4, !taffo.initweight !54, !taffo.info !39, !taffo.target !40
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1, !taffo.info !55, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !57

for.end:                                          ; preds = %for.cond8
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !58

for.end16:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !59
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !60 !taffo.funinfo !61 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !62 !taffo.funinfo !63 !taffo.equivalentChild !64 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !65
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !34, !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !47, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !53, !taffo.info !70

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !72
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !47, !taffo.info !72
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !53, !taffo.info !72

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !47, !taffo.info !70
  %add = add nsw i32 %mul, 1, !taffo.initweight !53, !taffo.info !70, !taffo.constinfo !27
  %rem = srem i32 %add, %n, !taffo.initweight !54, !taffo.info !70
  %conv = sitofp i32 %rem to float, !taffo.initweight !73, !taffo.info !70
  %conv6 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !74, !taffo.info !70
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !47, !taffo.info !75
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !47, !taffo.info !75
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !53, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !47, !taffo.info !72, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !76

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !47, !taffo.info !70, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !77

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !34, !taffo.info !70
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.initweight !47, !taffo.info !70
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !53, !taffo.info !70

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !34, !taffo.info !72
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.initweight !47, !taffo.info !72
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !53, !taffo.info !72

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.initweight !47, !taffo.info !70
  %add20 = add nsw i32 %mul19, 2, !taffo.initweight !53, !taffo.info !70, !taffo.constinfo !27
  %rem21 = srem i32 %add20, %m, !taffo.initweight !54, !taffo.info !70
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !73, !taffo.info !70
  %conv23 = sitofp i32 %m to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !74, !taffo.info !70
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.initweight !47, !taffo.info !75
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !47, !taffo.info !75
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !53, !taffo.info !75
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !47, !taffo.info !72, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !78

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !47, !taffo.info !70, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !79

for.end32:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !62 !taffo.funinfo !63 !taffo.equivalentChild !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end27

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
  br label %for.cond1, !llvm.loop !81

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ]
  %cmp6 = icmp slt i32 %k.0, %m
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ]
  %cmp9 = icmp sle i32 %j.1, %i.0
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %alpha, %1
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0
  %2 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %2
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i32 0, i32 %j.1
  %3 = load float, float* %arrayidx18, align 4
  %add = fadd float %3, %mul16
  store float %add, float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !82

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !83

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !84

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !31 !taffo.funinfo !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !51
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !90
  %add = add nsw i32 %mul, %j.0, !taffo.info !90
  %rem = srem i32 %add, 20, !taffo.info !90, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !88
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !92
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !93

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !94

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk.1(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !95 !taffo.funinfo !96 !taffo.sourceFunction !48 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !51
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !51
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !73, !taffo.info !39
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !74, !taffo.info !39
  %0 = load float, float* %arrayidx4, align 4, !taffo.initweight !97, !taffo.info !39
  %mul = fmul float %0, %beta, !taffo.initweight !73, !taffo.info !98
  store float %mul, float* %arrayidx4, align 4, !taffo.initweight !74, !taffo.info !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !100

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !51
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !88
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !51
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !51
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !73, !taffo.info !41
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.initweight !74, !taffo.info !41
  %1 = load float, float* %arrayidx12, align 4, !taffo.initweight !97, !taffo.info !41
  %mul13 = fmul float %alpha, %1, !taffo.initweight !73, !taffo.info !101
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.initweight !73, !taffo.info !41
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.initweight !74, !taffo.info !41
  %2 = load float, float* %arrayidx15, align 4, !taffo.initweight !97, !taffo.info !41
  %mul16 = fmul float %mul13, %2, !taffo.initweight !74, !taffo.info !103
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !73, !taffo.info !39
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i32 0, i32 %j.1, !taffo.initweight !74, !taffo.info !39
  %3 = load float, float* %arrayidx18, align 4, !taffo.initweight !97, !taffo.info !39
  %add = fadd float %3, %mul16, !taffo.initweight !97, !taffo.info !105
  store float %add, float* %arrayidx18, align 4, !taffo.initweight !97, !taffo.info !39
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !107

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !108

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !109

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !110 !taffo.funinfo !96 !taffo.sourceFunction !44 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !54, !taffo.info !35, !taffo.constinfo !65
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !54, !taffo.info !37, !taffo.constinfo !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !34, !taffo.info !111
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !47, !taffo.info !112
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !53, !taffo.info !70

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !113
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !47, !taffo.info !112
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !53, !taffo.info !72

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !47, !taffo.info !115
  %add = add nsw i32 %mul, 1, !taffo.initweight !53, !taffo.info !117, !taffo.constinfo !27
  %rem = srem i32 %add, %n, !taffo.initweight !54, !taffo.info !119
  %conv = sitofp i32 %rem to float, !taffo.initweight !73, !taffo.info !119
  %conv6 = sitofp i32 %n to float, !taffo.info !86
  %div = fdiv float %conv, %conv6, !taffo.initweight !74, !taffo.info !121
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !47, !taffo.info !121
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !47, !taffo.info !121
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !53, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !47, !taffo.info !122, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !124

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !47, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !126

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !34, !taffo.info !111
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.initweight !47, !taffo.info !112
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !53, !taffo.info !70

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !34, !taffo.info !113
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.initweight !47, !taffo.info !127
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !53, !taffo.info !72

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.initweight !47, !taffo.info !115
  %add20 = add nsw i32 %mul19, 2, !taffo.initweight !53, !taffo.info !128, !taffo.constinfo !27
  %rem21 = srem i32 %add20, %m, !taffo.initweight !54, !taffo.info !130
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !73, !taffo.info !130
  %conv23 = sitofp i32 %m to float, !taffo.info !22
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !74, !taffo.info !132
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.initweight !47, !taffo.info !134
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !47, !taffo.info !134
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !53, !taffo.info !75
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !47, !taffo.info !122, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !135

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !47, !taffo.info !125, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !136

for.end32:                                        ; preds = %for.cond11
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
!7 = !{double 0.000000e+00, double 0x401D2A28FE260B2D}
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
!43 = !{i32 1}
!44 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*)* @init_array}
!45 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!46 = !{i1 false}
!47 = !{i32 2}
!48 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*)* @kernel_syrk}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 1.700000e+01}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.000000e+00}
!53 = !{i32 3}
!54 = !{i32 4}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 1.700000e+01}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = !{i1 false, i1 false, i1 false}
!60 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!61 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!62 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!63 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!64 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*)* @init_array.2}
!65 = !{!66, i1 false}
!66 = !{i1 false, !36, i1 false, i2 0}
!67 = !{!68, i1 false}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!70 = !{i1 false, !71, i1 false, i2 1}
!71 = !{double 0.000000e+00, double 1.600000e+01}
!72 = !{i1 false, !9, i1 false, i2 1}
!73 = !{i32 5}
!74 = !{i32 6}
!75 = !{i1 false, i1 false, i1 false, i2 1}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29}
!80 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*)* @kernel_syrk.1}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = !{i32 1, !86, i32 1, !6}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.600000e+01, double 1.600000e+01}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.000000e+00, double 1.000000e+00}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 0.000000e+00}
!92 = !{i1 false, i1 false, i1 false, i1 false}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!96 = !{i32 1, !86, i32 1, !22, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41}
!97 = !{i32 7}
!98 = !{i1 false, !99, i1 false, i2 -1}
!99 = !{double 0.000000e+00, double 0x40217FB23216D381}
!100 = distinct !{!100, !29}
!101 = !{i1 false, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 1.406250e+00}
!103 = !{i1 false, !104, i1 false, i2 -1}
!104 = !{double 0.000000e+00, double 0x3FF5180000000000}
!105 = !{i1 false, !106, i1 false, i2 -1}
!106 = !{double 0.000000e+00, double 0x402138147F130596}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2}
!111 = !{i1 false, !50, i1 false, i2 1}
!112 = !{i1 false, !52, i1 false, i2 1}
!113 = !{i1 false, !114, i1 false, i2 1}
!114 = !{double 0.000000e+00, double 1.100000e+01}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double 0.000000e+00, double 1.600000e+02}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 1.000000e+00, double 1.610000e+02}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 0.000000e+00, double 1.500000e+01}
!121 = !{i1 false, !42, i1 false, i2 1}
!122 = !{i1 false, !123, i1 false, i2 1}
!123 = !{double 1.000000e+00, double 1.100000e+01}
!124 = distinct !{!124, !29}
!125 = !{i1 false, !56, i1 false, i2 1}
!126 = distinct !{!126, !29}
!127 = !{i1 false, !89, i1 false, i2 1}
!128 = !{i1 false, !129, i1 false, i2 1}
!129 = !{double 2.000000e+00, double 1.620000e+02}
!130 = !{i1 false, !131, i1 false, i2 1}
!131 = !{double 0.000000e+00, double 9.000000e+00}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 9.000000e-01}
!134 = !{i1 false, !7, i1 false, i2 1}
!135 = distinct !{!135, !29}
!136 = distinct !{!136, !29}
