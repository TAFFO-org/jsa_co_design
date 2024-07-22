; ModuleID = './build/bin/fixed/trmm/11/trmm-standard-16-fixed-11.out.ll.3.taffotmp.ll'
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.equivalentChild !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !27 !taffo.funinfo !28 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !32 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !33

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !34

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !37

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !38

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !39

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !41 {
entry:
  %alpha = alloca float, align 4, !taffo.info !42, !taffo.initweight !45
  %A = alloca [10 x [10 x float]], align 4, !taffo.info !46, !taffo.initweight !45
  %B = alloca [10 x [16 x float]], align 4, !taffo.info !49, !taffo.initweight !45, !taffo.target !51
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !52, !taffo.initweight !53
  %A2 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.info !54, !taffo.initweight !53
  %B3 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.info !55, !taffo.initweight !53, !taffo.target !51
  %arraydecay = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !46, !taffo.initweight !53
  %arraydecay4 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !53, !taffo.target !51
  call void @init_array.3(i32 noundef 10, i32 noundef 16, float* noundef %alpha, [10 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay4), !taffo.info !56, !taffo.initweight !53, !taffo.constinfo !57, !taffo.originalCall !58
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 16), !taffo.info !56, !taffo.initweight !53, !taffo.constinfo !59, !taffo.originalCall !60
  %arraydecay5 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !46, !taffo.initweight !53
  %0 = bitcast [10 x float]* %arraydecay5 to float*, !taffo.info !46, !taffo.initweight !61
  call void @scale_2d.4(i32 noundef 10, i32 noundef 10, float* noundef %0, i32 noundef 16), !taffo.info !62, !taffo.initweight !63, !taffo.constinfo !64, !taffo.originalCall !65
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !53, !taffo.target !51
  %1 = bitcast [16 x float]* %arraydecay6 to float*, !taffo.info !49, !taffo.initweight !61, !taffo.target !51
  call void @scale_2d.5(i32 noundef 10, i32 noundef 16, float* noundef %1, i32 noundef 16), !taffo.info !66, !taffo.initweight !63, !taffo.constinfo !64, !taffo.target !51, !taffo.originalCall !65
  call void @timer_start(), !taffo.constinfo !67
  %2 = load float, float* %alpha, align 4, !taffo.info !42, !taffo.initweight !53
  %arraydecay7 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !46, !taffo.initweight !53
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !53, !taffo.target !51
  call void @kernel_trmm.2(i32 noundef 10, i32 noundef 16, float noundef %2, [10 x float]* noundef %arraydecay7, [16 x float]* noundef %arraydecay8), !taffo.info !56, !taffo.initweight !61, !taffo.constinfo !57, !taffo.originalCall !68
  call void @timer_stop(), !taffo.constinfo !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp10 = icmp slt i32 %j.0, 16, !taffo.info !71
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 %i.0, !taffo.info !49, !taffo.initweight !53, !taffo.target !51
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !61, !taffo.target !51
  %3 = load float, float* %arrayidx12, align 4, !taffo.info !49, !taffo.initweight !63, !taffo.target !51
  %arrayidx13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !0
  store float %3, float* %arrayidx14, align 4, !taffo.info !66, !taffo.initweight !75, !taffo.target !51
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !78

for.end:                                          ; preds = %for.cond9
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !81

for.end17:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0)), !taffo.constinfo !82
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !27 !taffo.funinfo !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !88
  %add = add nsw i32 %mul, %j.0, !taffo.info !88
  %rem = srem i32 %add, 20, !taffo.info !88, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !86
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %conv), !taffo.constinfo !82
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !90

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !91

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !60 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.2(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !94 !taffo.funinfo !95 !taffo.sourceFunction !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !96
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !86
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %k.0, !taffo.info !46, !taffo.initweight !98
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %i.0, !taffo.info !46, !taffo.initweight !99
  %0 = load float, float* %arrayidx7, align 4, !taffo.info !46, !taffo.initweight !100
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0, !taffo.info !49, !taffo.initweight !98
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !99
  %1 = load float, float* %arrayidx9, align 4, !taffo.info !49, !taffo.initweight !100
  %mul = fmul float %0, %1, !taffo.info !101, !taffo.initweight !104
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !49, !taffo.initweight !98
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !99
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !49, !taffo.initweight !100
  %add12 = fadd float %2, %mul, !taffo.info !105, !taffo.initweight !104
  store float %add12, float* %arrayidx11, align 4, !taffo.info !66, !taffo.initweight !100
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !107

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !49, !taffo.initweight !98
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !99
  %3 = load float, float* %arrayidx14, align 4, !taffo.info !49, !taffo.initweight !100
  %mul15 = fmul float %alpha, %3, !taffo.info !108, !taffo.initweight !98
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !49, !taffo.initweight !98
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx16, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !99
  store float %mul15, float* %arrayidx17, align 4, !taffo.info !56, !taffo.initweight !99
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !110

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !111

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !112 !taffo.funinfo !95 !taffo.sourceFunction !58 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !56, !taffo.initweight !75, !taffo.constinfo !113
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !115, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !116, !taffo.initweight !61
  br i1 %cmp, label %for.body, label %for.end29, !taffo.info !117, !taffo.initweight !63

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !118, !taffo.initweight !45
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !116, !taffo.initweight !61
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !120, !taffo.initweight !63

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.info !116, !taffo.initweight !61
  br i1 %cmp6, label %if.then, label %if.else, !taffo.info !117, !taffo.initweight !63

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.info !121, !taffo.initweight !61
  %rem = srem i32 %add, %m, !taffo.info !123, !taffo.initweight !63
  %conv = sitofp i32 %rem to float, !taffo.info !125, !taffo.initweight !75
  %conv7 = sitofp i32 %m to float, !taffo.info !127
  %div = fdiv float %conv, %conv7, !taffo.info !128, !taffo.initweight !98
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !131, !taffo.initweight !61
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !131, !taffo.initweight !61
  store float %div, float* %arrayidx8, align 4, !taffo.info !132, !taffo.initweight !63
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !131, !taffo.initweight !61
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.info !131, !taffo.initweight !61
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.info !132, !taffo.initweight !63, !taffo.constinfo !133
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !134, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !136

for.end:                                          ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !131, !taffo.initweight !61
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %i.0, !taffo.info !131, !taffo.initweight !61
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.info !132, !taffo.initweight !63, !taffo.constinfo !137
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.info !118, !taffo.initweight !45
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.info !116, !taffo.initweight !61
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.info !120, !taffo.initweight !63

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.info !138, !taffo.initweight !61
  %add17 = add nsw i32 %n, %sub, !taffo.info !121, !taffo.initweight !63
  %rem18 = srem i32 %add17, %n, !taffo.info !140, !taffo.initweight !75
  %conv19 = sitofp i32 %rem18 to float, !taffo.info !142, !taffo.initweight !98
  %conv20 = sitofp i32 %n to float, !taffo.info !143
  %div21 = fdiv float %conv19, %conv20, !taffo.info !144, !taffo.initweight !99
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !146, !taffo.initweight !61
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.1, !taffo.info !146, !taffo.initweight !61
  store float %div21, float* %arrayidx23, align 4, !taffo.info !132, !taffo.initweight !63
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !134, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond13, !llvm.loop !147

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !148, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !149

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !150 !taffo.funinfo !151 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !46, !taffo.initweight !99
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !46, !taffo.initweight !100
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !46, !taffo.initweight !104
  %conv = sitofp i32 %factor to float, !taffo.info !143
  %mul = fmul float %1, %conv, !taffo.info !152, !taffo.initweight !155
  %2 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !46, !taffo.initweight !99
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !46, !taffo.initweight !100
  store float %mul, float* %arrayidx6, align 4, !taffo.info !62, !taffo.initweight !104
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !156

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !157

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !150 !taffo.funinfo !158 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !86
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !86
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !49, !taffo.initweight !99
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !49, !taffo.initweight !100
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !49, !taffo.initweight !104
  %conv = sitofp i32 %factor to float, !taffo.info !143
  %mul = fmul float %1, %conv, !taffo.info !101, !taffo.initweight !155
  %2 = mul nsw i32 %i.0, %m, !taffo.info !88
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !49, !taffo.initweight !99
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !49, !taffo.initweight !100
  store float %mul, float* %arrayidx6, align 4, !taffo.info !66, !taffo.initweight !104
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !159

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !160

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.341000e+03}
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
!24 = !{i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false}
!26 = !{void (float*, i32)* @scale_scalar.1}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = !{void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.5}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = !{}
!41 = !{i1 true}
!42 = !{!43, !44, i1 false, i2 -1}
!43 = !{!"fixp", i32 32, i32 30}
!44 = !{double 1.500000e+00, double 1.500000e+00}
!45 = !{i32 0}
!46 = !{!47, !48, i1 false, i2 -1}
!47 = !{!"fixp", i32 32, i32 27}
!48 = !{double 0.000000e+00, double 1.600000e+01}
!49 = !{!50, !1, i1 false, i2 -1}
!50 = !{!"fixp", i32 32, i32 21}
!51 = !{!"B"}
!52 = !{!43, i1 false, i1 false, i2 -1}
!53 = !{i32 1}
!54 = !{!47, i1 false, i1 false, i2 -1}
!55 = !{!50, i1 false, i1 false, i2 -1}
!56 = !{i1 false, !44, i1 false, i2 -1}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = distinct !{null}
!59 = !{i1 false, i1 false, i1 false}
!60 = !{void (float*, i32)* @scale_scalar}
!61 = !{i32 2}
!62 = !{i1 false, !48, i1 false, i2 -1}
!63 = !{i32 3}
!64 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!65 = !{void (i32, i32, float*, i32)* @scale_2d}
!66 = !{i1 false, !1, i1 false, i2 -1}
!67 = !{i1 false}
!68 = distinct !{null}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 1.100000e+01}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 1.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.870000e+02}
!75 = !{i32 4}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.870000e+02}
!78 = distinct !{!78, !23}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 1.100000e+01}
!81 = distinct !{!81, !23}
!82 = !{i1 false, i1 false, i1 false, i1 false}
!83 = !{i32 1, !16, i32 1, !84, i32 1, !0}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.600000e+01, double 1.600000e+01}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.000000e+00, double 1.000000e+00}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 0.000000e+00, double 0.000000e+00}
!90 = distinct !{!90, !23}
!91 = distinct !{!91, !23}
!92 = !{i32 1, i32 -1}
!93 = !{i32 1, !42, i32 1, !84}
!94 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!95 = !{i32 1, !16, i32 1, !84, i32 1, !42, i32 1, !46, i32 1, !49}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 1.000000e+00, double 2.000000e+00}
!98 = !{i32 5}
!99 = !{i32 6}
!100 = !{i32 7}
!101 = !{!102, !103, i1 false, i2 -1}
!102 = !{!"fixp", i32 32, i32 17}
!103 = !{double 0.000000e+00, double 2.145600e+04}
!104 = !{i32 8}
!105 = !{!102, !106, i1 false, i2 -1}
!106 = !{double 0.000000e+00, double 2.279700e+04}
!107 = distinct !{!107, !23}
!108 = !{!50, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 2.011500e+03}
!110 = distinct !{!110, !23}
!111 = distinct !{!111, !23}
!112 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!113 = !{!114, i1 false}
!114 = !{i1 false, !44, i1 false, i2 0}
!115 = !{i1 false, !70, i1 false, i2 1}
!116 = !{i1 false, !72, i1 false, i2 1}
!117 = !{i1 false, !3, i1 false, i2 1}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 1.700000e+01}
!120 = !{i1 false, !48, i1 false, i2 1}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 0.000000e+00, double 2.600000e+01}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 0.000000e+00, double 9.000000e+00}
!125 = !{!126, !124, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 28}
!127 = !{!126, !17, i1 false, i2 1}
!128 = !{!129, !130, i1 false, i2 1}
!129 = !{!"fixp", i32 32, i32 31}
!130 = !{double 0.000000e+00, double 9.000000e-01}
!131 = !{!47, !48, i1 false, i2 1}
!132 = !{i1 false, i1 false, i1 false, i2 1}
!133 = !{!88, i1 false}
!134 = !{i1 false, !135, i1 false, i2 1}
!135 = !{double 1.000000e+00, double 1.700000e+01}
!136 = distinct !{!136, !23}
!137 = !{!86, i1 false}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double -1.600000e+01, double 1.000000e+01}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 0.000000e+00, double 1.500000e+01}
!142 = !{!126, !141, i1 false, i2 1}
!143 = !{!47, !85, i1 false, i2 1}
!144 = !{!129, !145, i1 false, i2 1}
!145 = !{double 0.000000e+00, double 9.375000e-01}
!146 = !{!50, !1, i1 false, i2 1}
!147 = distinct !{!147, !23}
!148 = !{i1 false, !80, i1 false, i2 1}
!149 = distinct !{!149, !23}
!150 = !{i32 -1, i32 -1, i32 3, i32 -1}
!151 = !{i32 1, !16, i32 1, !16, i32 1, !46, i32 1, !84}
!152 = !{!153, !154, i1 false, i2 -1}
!153 = !{!"fixp", i32 32, i32 23}
!154 = !{double 0.000000e+00, double 2.560000e+02}
!155 = !{i32 9}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = !{i32 1, !16, i32 1, !84, i32 1, !49, i32 1, !84}
!159 = distinct !{!159, !23}
!160 = distinct !{!160, !23}
