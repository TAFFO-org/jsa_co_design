; ModuleID = './build/bin/fixed/trmm/16/trmm-standard-1-fixed-16.out.ll.3.taffotmp.ll'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %alpha = alloca float, align 4, !taffo.info !28, !taffo.initweight !31
  %A = alloca [10 x [10 x float]], align 4, !taffo.info !32, !taffo.initweight !31
  %B = alloca [10 x [16 x float]], align 4, !taffo.info !35, !taffo.initweight !31, !taffo.target !37
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !38, !taffo.initweight !39
  %A2 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.info !40, !taffo.initweight !39
  %B3 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.info !41, !taffo.initweight !39, !taffo.target !37
  %arraydecay = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !32, !taffo.initweight !39
  %arraydecay4 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !35, !taffo.initweight !39, !taffo.target !37
  call void @init_array.2(i32 noundef 10, i32 noundef 16, float* noundef %alpha, [10 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay4), !taffo.info !42, !taffo.initweight !39, !taffo.constinfo !43, !taffo.originalCall !44
  call void @timer_start(), !taffo.constinfo !45
  %0 = load float, float* %alpha, align 4, !taffo.info !46, !taffo.initweight !39
  %arraydecay5 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !32, !taffo.initweight !39
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !35, !taffo.initweight !39, !taffo.target !37
  call void @kernel_trmm.1(i32 noundef 10, i32 noundef 16, float noundef %0, [10 x float]* noundef %arraydecay5, [16 x float]* noundef %arraydecay6), !taffo.info !42, !taffo.initweight !48, !taffo.constinfo !43, !taffo.originalCall !49
  call void @timer_stop(), !taffo.constinfo !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !50
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !52
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp8 = icmp slt i32 %j.0, 16, !taffo.info !52
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 %i.0, !taffo.info !35, !taffo.initweight !39, !taffo.target !37
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !35, !taffo.initweight !48, !taffo.target !37
  %1 = load float, float* %arrayidx10, align 4, !taffo.info !35, !taffo.initweight !55, !taffo.target !37
  %arrayidx11 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx12, align 4, !taffo.info !56, !taffo.initweight !57, !taffo.target !37
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !58, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !60

for.end:                                          ; preds = %for.cond7
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !61, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !63

for.end15:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0)), !taffo.constinfo !64
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !65 !taffo.funinfo !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !52
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !71
  %add = add nsw i32 %mul, %j.0, !taffo.info !71
  %rem = srem i32 %add, 20, !taffo.info !71, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !69
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !taffo.constinfo !73
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %conv), !taffo.constinfo !64
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !74

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !75

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.1(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !76 !taffo.funinfo !77 !taffo.sourceFunction !49 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ], !taffo.info !52
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !78
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !69
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %k.0, !taffo.info !32, !taffo.initweight !80
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %i.0, !taffo.info !32, !taffo.initweight !81
  %0 = load float, float* %arrayidx7, align 4, !taffo.info !82, !taffo.initweight !83
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0, !taffo.info !35, !taffo.initweight !80
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.info !35, !taffo.initweight !81
  %1 = load float, float* %arrayidx9, align 4, !taffo.info !35, !taffo.initweight !83
  %mul = fmul float %0, %1, !taffo.info !84, !taffo.initweight !85
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !35, !taffo.initweight !80
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !35, !taffo.initweight !81
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !84, !taffo.initweight !83
  %add12 = fadd float %2, %mul, !taffo.info !86, !taffo.initweight !85
  store float %add12, float* %arrayidx11, align 4, !taffo.info !56, !taffo.initweight !83
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !88

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !35, !taffo.initweight !80
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !35, !taffo.initweight !81
  %3 = load float, float* %arrayidx14, align 4, !taffo.info !84, !taffo.initweight !83
  %mul15 = fmul float %alpha, %3, !taffo.info !89, !taffo.initweight !80
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !35, !taffo.initweight !80
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx16, i32 0, i32 %j.0, !taffo.info !35, !taffo.initweight !81
  store float %mul15, float* %arrayidx17, align 4, !taffo.info !42, !taffo.initweight !81
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !91

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !92

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !93 !taffo.funinfo !94 !taffo.sourceFunction !44 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !42, !taffo.initweight !57, !taffo.constinfo !95
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !97, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !98, !taffo.initweight !48
  br i1 %cmp, label %for.body, label %for.end29, !taffo.info !99, !taffo.initweight !55

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !100, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !98, !taffo.initweight !48
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !102, !taffo.initweight !55

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.info !98, !taffo.initweight !48
  br i1 %cmp6, label %if.then, label %if.else, !taffo.info !99, !taffo.initweight !55

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.info !104, !taffo.initweight !48
  %rem = srem i32 %add, %m, !taffo.info !106, !taffo.initweight !55
  %conv = sitofp i32 %rem to float, !taffo.info !108, !taffo.initweight !57
  %conv7 = sitofp i32 %m to float, !taffo.info !109
  %div = fdiv float %conv, %conv7, !taffo.info !110, !taffo.initweight !80
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !112, !taffo.initweight !48
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !112, !taffo.initweight !48
  store float %div, float* %arrayidx8, align 4, !taffo.info !113, !taffo.initweight !55
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !112, !taffo.initweight !48
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.info !112, !taffo.initweight !48
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.info !113, !taffo.initweight !55, !taffo.constinfo !114
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !115, !taffo.initweight !48, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !117

for.end:                                          ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !112, !taffo.initweight !48
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %i.0, !taffo.info !112, !taffo.initweight !48
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.info !113, !taffo.initweight !55, !taffo.constinfo !118
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.info !100, !taffo.initweight !31
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.info !98, !taffo.initweight !48
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.info !102, !taffo.initweight !55

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.info !119, !taffo.initweight !48
  %add17 = add nsw i32 %n, %sub, !taffo.info !104, !taffo.initweight !55
  %rem18 = srem i32 %add17, %n, !taffo.info !121, !taffo.initweight !57
  %conv19 = sitofp i32 %rem18 to float, !taffo.info !123, !taffo.initweight !80
  %conv20 = sitofp i32 %n to float, !taffo.info !124
  %div21 = fdiv float %conv19, %conv20, !taffo.info !126, !taffo.initweight !81
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !128, !taffo.initweight !48
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.1, !taffo.info !128, !taffo.initweight !48
  store float %div21, float* %arrayidx23, align 4, !taffo.info !113, !taffo.initweight !55
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !115, !taffo.initweight !48, !taffo.constinfo !21
  br label %for.cond13, !llvm.loop !129

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !130, !taffo.initweight !48, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !131

for.end29:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x4017100000000000}
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
!29 = !{!"fixp", i32 32, i32 30}
!30 = !{double 1.500000e+00, double 1.500000e+00}
!31 = !{i32 0}
!32 = !{!33, !34, i1 false, i2 -1}
!33 = !{!"fixp", i32 32, i32 31}
!34 = !{double 0.000000e+00, double 1.000000e+00}
!35 = !{!36, !1, i1 false, i2 -1}
!36 = !{!"fixp", i32 32, i32 29}
!37 = !{!"B"}
!38 = !{!29, i1 false, i1 false, i2 -1}
!39 = !{i32 1}
!40 = !{!33, i1 false, i1 false, i2 -1}
!41 = !{!36, i1 false, i1 false, i2 -1}
!42 = !{i1 false, !30, i1 false, i2 -1}
!43 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!44 = distinct !{null}
!45 = !{i1 false}
!46 = !{!47, !30, i1 false, i2 -1}
!47 = !{!"fixp", i32 32, i32 28}
!48 = !{i32 2}
!49 = distinct !{null}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 1.100000e+01}
!52 = !{i1 false, !34, i1 false, i2 0}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.870000e+02}
!55 = !{i32 3}
!56 = !{i1 false, !1, i1 false, i2 -1}
!57 = !{i32 4}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 1.870000e+02}
!60 = distinct !{!60, !23}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.000000e+00, double 1.100000e+01}
!63 = distinct !{!63, !23}
!64 = !{i1 false, i1 false, i1 false, i1 false}
!65 = !{i32 -1, i32 -1, i32 -1}
!66 = !{i32 1, !16, i32 1, !67, i32 1, !0}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.600000e+01, double 1.600000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 0.000000e+00}
!73 = !{i1 false, i1 false, i1 false}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23}
!76 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!77 = !{i32 1, !16, i32 1, !67, i32 1, !46, i32 1, !32, i32 1, !35}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 2.000000e+00}
!80 = !{i32 5}
!81 = !{i32 6}
!82 = !{!36, !34, i1 false, i2 -1}
!83 = !{i32 7}
!84 = !{!47, !1, i1 false, i2 -1}
!85 = !{i32 8}
!86 = !{!47, !87, i1 false, i2 -1}
!87 = !{double 0.000000e+00, double 0x4027100000000000}
!88 = distinct !{!88, !23}
!89 = !{!47, !90, i1 false, i2 -1}
!90 = !{double 0.000000e+00, double 0x40214C0000000000}
!91 = distinct !{!91, !23}
!92 = distinct !{!92, !23}
!93 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!94 = !{i32 1, !16, i32 1, !67, i32 1, !28, i32 1, !32, i32 1, !35}
!95 = !{!96, i1 false}
!96 = !{i1 false, !30, i1 false, i2 0}
!97 = !{i1 false, !51, i1 false, i2 1}
!98 = !{i1 false, !34, i1 false, i2 1}
!99 = !{i1 false, !3, i1 false, i2 1}
!100 = !{i1 false, !101, i1 false, i2 1}
!101 = !{double 0.000000e+00, double 1.700000e+01}
!102 = !{i1 false, !103, i1 false, i2 1}
!103 = !{double 0.000000e+00, double 1.600000e+01}
!104 = !{i1 false, !105, i1 false, i2 1}
!105 = !{double 0.000000e+00, double 2.600000e+01}
!106 = !{i1 false, !107, i1 false, i2 1}
!107 = !{double 0.000000e+00, double 9.000000e+00}
!108 = !{!47, !107, i1 false, i2 1}
!109 = !{!47, !17, i1 false, i2 1}
!110 = !{!33, !111, i1 false, i2 1}
!111 = !{double 0.000000e+00, double 9.000000e-01}
!112 = !{!33, !34, i1 false, i2 1}
!113 = !{i1 false, i1 false, i1 false, i2 1}
!114 = !{!71, i1 false}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double 1.000000e+00, double 1.700000e+01}
!117 = distinct !{!117, !23}
!118 = !{!69, i1 false}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double -1.600000e+01, double 1.000000e+01}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 0.000000e+00, double 1.500000e+01}
!123 = !{!47, !122, i1 false, i2 1}
!124 = !{!125, !68, i1 false, i2 1}
!125 = !{!"fixp", i32 32, i32 27}
!126 = !{!33, !127, i1 false, i2 1}
!127 = !{double 0.000000e+00, double 9.375000e-01}
!128 = !{!36, !1, i1 false, i2 1}
!129 = distinct !{!129, !23}
!130 = !{i1 false, !62, i1 false, i2 1}
!131 = distinct !{!131, !23}
