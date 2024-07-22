; ModuleID = './build/bin/fixed/heat-3d/11/heat-3d-standard-16-fixed-11.out.ll.4.taffotmp.ll'
source_filename = "./sources/heat-3d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [5 x [5 x [5 x float]]] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
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
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 {
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
  br label %for.cond1, !llvm.loop !31

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !32

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !33 !taffo.funinfo !34 !taffo.equivalentChild !35 {
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
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !37

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !38

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !40 {
entry:
  %A.u9_23fixp = alloca [5 x [5 x [5 x i32]]], align 4, !taffo.info !41, !taffo.target !44
  %B.u9_23fixp = alloca [5 x [5 x [5 x i32]]], align 4, !taffo.info !41
  %arraydecay.u9_23fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay3.u9_23fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %B.u9_23fixp, i32 0, i32 0, !taffo.info !41
  call void @init_array.2_fixp(i32 5, [5 x [5 x i32]]* %arraydecay.u9_23fixp, [5 x [5 x i32]]* %arraydecay3.u9_23fixp), !taffo.info !45, !taffo.constinfo !46, !taffo.target !44
  %arraydecay4.u9_23fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %u9_23fixp = bitcast [5 x [5 x i32]]* %arraydecay4.u9_23fixp to i32*, !taffo.info !41, !taffo.target !44
  call void @scale_3d.3_fixp(i32 5, i32 5, i32 5, i32* %u9_23fixp, i32 16), !taffo.info !45, !taffo.constinfo !47, !taffo.target !44
  %arraydecay5.u9_23fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %B.u9_23fixp, i32 0, i32 0, !taffo.info !41
  %u9_23fixp1 = bitcast [5 x [5 x i32]]* %arraydecay5.u9_23fixp to i32*, !taffo.info !41
  call void @scale_3d.3_fixp(i32 5, i32 5, i32 5, i32* %u9_23fixp1, i32 16), !taffo.info !45, !taffo.constinfo !47
  call void @timer_start(), !taffo.constinfo !48
  %arraydecay6.u9_23fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay7.u9_23fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %B.u9_23fixp, i32 0, i32 0, !taffo.info !41
  call void @kernel_heat_3d.1_fixp(i32 10, i32 5, [5 x [5 x i32]]* %arraydecay6.u9_23fixp, [5 x [5 x i32]]* %arraydecay7.u9_23fixp), !taffo.info !45, !taffo.constinfo !49, !taffo.target !44
  call void @timer_stop(), !taffo.constinfo !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc23, %for.inc22 ], !taffo.info !50
  %cmp = icmp slt i32 %i.0, 5, !taffo.info !52
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc20, %for.inc19 ], !taffo.info !54
  %cmp9 = icmp slt i32 %j.0, 5, !taffo.info !52
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body10
  %k.0 = phi i32 [ 0, %for.body10 ], [ %inc, %for.inc ], !taffo.info !56
  %cmp12 = icmp slt i32 %k.0, 5, !taffo.info !52
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx.u9_23fixp = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %A.u9_23fixp, i32 0, i32 %i.0, !taffo.info !41, !taffo.target !44
  %arrayidx14.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41, !taffo.target !44
  %arrayidx15.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx14.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41, !taffo.target !44
  %u9_23fixp2 = load i32, i32* %arrayidx15.u9_23fixp, align 4, !taffo.info !41, !taffo.target !44
  %0 = uitofp i32 %u9_23fixp2 to float, !taffo.info !41, !taffo.target !44
  %1 = fdiv float %0, 0x4160000000000000, !taffo.info !41, !taffo.target !44
  %arrayidx16 = getelementptr inbounds [5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx17 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx16, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx18 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx17, i32 0, i32 %k.0, !taffo.info !0
  store float %1, float* %arrayidx18, align 4, !taffo.info !45, !taffo.target !44
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %k.0, 1, !taffo.info !58, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !60

for.end:                                          ; preds = %for.cond11
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %j.0, 1, !taffo.info !61, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !63

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !66

for.end24:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 5, [5 x [5 x float]]* noundef getelementptr inbounds ([5 x [5 x [5 x float]]], [5 x [5 x [5 x float]]]* @A_float, i32 0, i32 0)), !taffo.constinfo !67
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [5 x [5 x float]]* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !52
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !71
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !52
  %cmp5 = icmp slt i32 %k.0, %n, !taffo.info !71
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %i.0, %n, !taffo.info !73
  %mul7 = mul nsw i32 %mul, %n, !taffo.info !73
  %mul8 = mul nsw i32 %j.0, %n, !taffo.info !73
  %add = add nsw i32 %mul7, %mul8, !taffo.info !73
  %add9 = add nsw i32 %add, %k.0, !taffo.info !73
  %rem = srem i32 %add9, 20, !taffo.info !73, !taffo.constinfo !21
  %cmp10 = icmp eq i32 %rem, 0, !taffo.info !71
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !67
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %A, i32 %i.0, !taffo.info !0
  %arrayidx11 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !0
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !46
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !75

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !76

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !77

for.end19:                                        ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_heat_3d.1_fixp(i32 noundef %tsteps, i32 noundef %n, [5 x [5 x i32]]* noundef %A.u9_23fixp, [5 x [5 x i32]]* noundef %B.u9_23fixp) #0 !taffo.initweight !78 !taffo.funinfo !79 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc144, %entry
  %t.0 = phi i32 [ 1, %entry ], [ %inc145, %for.inc144 ], !taffo.info !81
  %cmp = icmp sle i32 %t.0, 10, !taffo.info !52
  br i1 %cmp, label %for.body, label %for.end146

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc66, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc67, %for.inc66 ], !taffo.info !81
  %sub = sub nsw i32 %n, 1, !taffo.info !83, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !52
  br i1 %cmp2, label %for.body3, label %for.end68

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc63, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc64, %for.inc63 ], !taffo.info !81
  %sub5 = sub nsw i32 %n, 1, !taffo.info !83, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !52
  br i1 %cmp6, label %for.body7, label %for.end65

for.body7:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 1, %for.body7 ], [ %inc, %for.inc ], !taffo.info !81
  %sub9 = sub nsw i32 %n, 1, !taffo.info !83, !taffo.constinfo !21
  %cmp10 = icmp slt i32 %k.0, %sub9, !taffo.info !52
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %add = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  %arrayidx.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %add, !taffo.info !41
  %arrayidx12.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %arrayidx13.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx12.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp = load i32, i32* %arrayidx13.u9_23fixp, align 4, !taffo.info !41
  %arrayidx14.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx15.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx14.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %arrayidx16.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx15.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp1 = load i32, i32* %arrayidx16.u9_23fixp, align 4, !taffo.info !87
  %0 = shl i32 2, 29
  %1 = lshr i32 %u9_23fixp1, 1, !taffo.info !87
  %2 = ashr i32 %0, 8
  %3 = ashr i32 %1, 1, !taffo.info !87
  %mul.s11_21fixp = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 21), !taffo.info !89
  %4 = lshr i32 %u9_23fixp, 2, !taffo.info !41
  %sub17.s11_21fixp = sub i32 %4, %mul.s11_21fixp, !taffo.info !92
  %sub18 = sub nsw i32 %i.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx19.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %sub18, !taffo.info !41
  %arrayidx20.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx19.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %arrayidx21.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx20.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp2 = load i32, i32* %arrayidx21.u9_23fixp, align 4, !taffo.info !41
  %5 = lshr i32 %u9_23fixp2, 2, !taffo.info !41
  %add22.s11_21fixp = add i32 %sub17.s11_21fixp, %5, !taffo.info !94
  %6 = lshr i32 1, 1
  %7 = ashr i32 %add22.s11_21fixp, 19, !taffo.info !94
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 2), !taffo.info !96
  %mul23.s9_23fixp = shl i32 %8, 21, !taffo.info !99, !taffo.constinfo !101
  %arrayidx24.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %add25 = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  %arrayidx26.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx24.u9_23fixp, i32 0, i32 %add25, !taffo.info !41
  %arrayidx27.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx26.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp3 = load i32, i32* %arrayidx27.u9_23fixp, align 4, !taffo.info !41
  %arrayidx28.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx29.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx28.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %arrayidx30.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx29.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp4 = load i32, i32* %arrayidx30.u9_23fixp, align 4, !taffo.info !87
  %9 = shl i32 2, 29
  %10 = lshr i32 %u9_23fixp4, 1, !taffo.info !87
  %11 = ashr i32 %9, 8
  %12 = ashr i32 %10, 1, !taffo.info !87
  %mul31.s11_21fixp = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 21), !taffo.info !89
  %13 = lshr i32 %u9_23fixp3, 2, !taffo.info !41
  %sub32.s11_21fixp = sub i32 %13, %mul31.s11_21fixp, !taffo.info !92
  %arrayidx33.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx35.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx33.u9_23fixp, i32 0, i32 %sub34, !taffo.info !41
  %arrayidx36.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx35.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp5 = load i32, i32* %arrayidx36.u9_23fixp, align 4, !taffo.info !41
  %14 = lshr i32 %u9_23fixp5, 2, !taffo.info !41
  %add37.s11_21fixp = add i32 %sub32.s11_21fixp, %14, !taffo.info !94
  %15 = lshr i32 1, 1
  %16 = ashr i32 %add37.s11_21fixp, 19, !taffo.info !94
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 2), !taffo.info !96
  %mul38.s9_23fixp = shl i32 %17, 21, !taffo.info !99, !taffo.constinfo !101
  %18 = ashr i32 %mul23.s9_23fixp, 1, !taffo.info !99, !taffo.constinfo !101
  %19 = ashr i32 %mul38.s9_23fixp, 1, !taffo.info !99, !taffo.constinfo !101
  %add39.s10_22fixp = add i32 %18, %19, !taffo.info !104
  %arrayidx40.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx41.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx40.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %add42 = add nsw i32 %k.0, 1, !taffo.info !85, !taffo.constinfo !21
  %arrayidx43.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx41.u9_23fixp, i32 0, i32 %add42, !taffo.info !41
  %u9_23fixp6 = load i32, i32* %arrayidx43.u9_23fixp, align 4, !taffo.info !41
  %arrayidx44.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx45.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx44.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %arrayidx46.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx45.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp7 = load i32, i32* %arrayidx46.u9_23fixp, align 4, !taffo.info !87
  %20 = shl i32 2, 29
  %21 = lshr i32 %u9_23fixp7, 1, !taffo.info !87
  %22 = ashr i32 %20, 8
  %23 = ashr i32 %21, 1, !taffo.info !87
  %mul47.s11_21fixp = call i32 @llvm.smul.fix.i32(i32 %22, i32 %23, i32 21), !taffo.info !89
  %24 = lshr i32 %u9_23fixp6, 2, !taffo.info !41
  %sub48.s11_21fixp = sub i32 %24, %mul47.s11_21fixp, !taffo.info !92
  %arrayidx49.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx50.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx49.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %sub51 = sub nsw i32 %k.0, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx52.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx50.u9_23fixp, i32 0, i32 %sub51, !taffo.info !41
  %u9_23fixp8 = load i32, i32* %arrayidx52.u9_23fixp, align 4, !taffo.info !41
  %25 = lshr i32 %u9_23fixp8, 2, !taffo.info !41
  %add53.s11_21fixp = add i32 %sub48.s11_21fixp, %25, !taffo.info !94
  %26 = lshr i32 1, 1
  %27 = ashr i32 %add53.s11_21fixp, 19, !taffo.info !94
  %28 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %27, i32 2), !taffo.info !96
  %mul54.s10_22fixp = shl i32 %28, 20, !taffo.info !107, !taffo.constinfo !101
  %29 = ashr i32 %add39.s10_22fixp, 1, !taffo.info !104
  %30 = ashr i32 %mul54.s10_22fixp, 1, !taffo.info !107, !taffo.constinfo !101
  %add55.s11_21fixp = add i32 %29, %30, !taffo.info !108
  %arrayidx56.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx57.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx56.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %arrayidx58.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx57.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %u9_23fixp9 = load i32, i32* %arrayidx58.u9_23fixp, align 4, !taffo.info !41
  %31 = lshr i32 %u9_23fixp9, 2, !taffo.info !41
  %add59.s11_21fixp = add i32 %add55.s11_21fixp, %31, !taffo.info !110
  %arrayidx60.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx61.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx60.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %arrayidx62.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx61.u9_23fixp, i32 0, i32 %k.0, !taffo.info !41
  %32 = shl i32 %add59.s11_21fixp, 2, !taffo.info !110
  store i32 %32, i32* %arrayidx62.u9_23fixp, align 4, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %k.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !112

for.end:                                          ; preds = %for.cond8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %inc64 = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !113

for.end65:                                        ; preds = %for.cond4
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !114

for.end68:                                        ; preds = %for.cond1
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc141, %for.end68
  %i.1 = phi i32 [ 1, %for.end68 ], [ %inc142, %for.inc141 ], !taffo.info !81
  %sub70 = sub nsw i32 %n, 1, !taffo.info !83, !taffo.constinfo !21
  %cmp71 = icmp slt i32 %i.1, %sub70, !taffo.info !52
  br i1 %cmp71, label %for.body72, label %for.end143

for.body72:                                       ; preds = %for.cond69
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc138, %for.body72
  %j.1 = phi i32 [ 1, %for.body72 ], [ %inc139, %for.inc138 ], !taffo.info !81
  %sub74 = sub nsw i32 %n, 1, !taffo.info !83, !taffo.constinfo !21
  %cmp75 = icmp slt i32 %j.1, %sub74, !taffo.info !52
  br i1 %cmp75, label %for.body76, label %for.end140

for.body76:                                       ; preds = %for.cond73
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc135, %for.body76
  %k.1 = phi i32 [ 1, %for.body76 ], [ %inc136, %for.inc135 ], !taffo.info !81
  %sub78 = sub nsw i32 %n, 1, !taffo.info !83, !taffo.constinfo !21
  %cmp79 = icmp slt i32 %k.1, %sub78, !taffo.info !52
  br i1 %cmp79, label %for.body80, label %for.end137

for.body80:                                       ; preds = %for.cond77
  %add81 = add nsw i32 %i.1, 1, !taffo.info !85, !taffo.constinfo !21
  %arrayidx82.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %add81, !taffo.info !41
  %arrayidx83.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx82.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %arrayidx84.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx83.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp10 = load i32, i32* %arrayidx84.u9_23fixp, align 4, !taffo.info !41
  %arrayidx85.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %arrayidx86.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx85.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %arrayidx87.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx86.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp11 = load i32, i32* %arrayidx87.u9_23fixp, align 4, !taffo.info !87
  %33 = shl i32 2, 29
  %34 = lshr i32 %u9_23fixp11, 1, !taffo.info !87
  %35 = ashr i32 %33, 8
  %36 = ashr i32 %34, 1, !taffo.info !87
  %mul88.s11_21fixp = call i32 @llvm.smul.fix.i32(i32 %35, i32 %36, i32 21), !taffo.info !89
  %37 = lshr i32 %u9_23fixp10, 2, !taffo.info !41
  %sub89.s11_21fixp = sub i32 %37, %mul88.s11_21fixp, !taffo.info !92
  %sub90 = sub nsw i32 %i.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx91.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %sub90, !taffo.info !41
  %arrayidx92.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx91.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %arrayidx93.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx92.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp12 = load i32, i32* %arrayidx93.u9_23fixp, align 4, !taffo.info !41
  %38 = lshr i32 %u9_23fixp12, 2, !taffo.info !41
  %add94.s11_21fixp = add i32 %sub89.s11_21fixp, %38, !taffo.info !94
  %39 = lshr i32 1, 1
  %40 = ashr i32 %add94.s11_21fixp, 19, !taffo.info !94
  %41 = call i32 @llvm.smul.fix.i32(i32 %39, i32 %40, i32 2), !taffo.info !96
  %mul95.s9_23fixp = shl i32 %41, 21, !taffo.info !99, !taffo.constinfo !101
  %arrayidx96.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %add97 = add nsw i32 %j.1, 1, !taffo.info !85, !taffo.constinfo !21
  %arrayidx98.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx96.u9_23fixp, i32 0, i32 %add97, !taffo.info !41
  %arrayidx99.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx98.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp13 = load i32, i32* %arrayidx99.u9_23fixp, align 4, !taffo.info !41
  %arrayidx100.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %arrayidx101.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx100.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %arrayidx102.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx101.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp14 = load i32, i32* %arrayidx102.u9_23fixp, align 4, !taffo.info !87
  %42 = shl i32 2, 29
  %43 = lshr i32 %u9_23fixp14, 1, !taffo.info !87
  %44 = ashr i32 %42, 8
  %45 = ashr i32 %43, 1, !taffo.info !87
  %mul103.s11_21fixp = call i32 @llvm.smul.fix.i32(i32 %44, i32 %45, i32 21), !taffo.info !89
  %46 = lshr i32 %u9_23fixp13, 2, !taffo.info !41
  %sub104.s11_21fixp = sub i32 %46, %mul103.s11_21fixp, !taffo.info !92
  %arrayidx105.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %sub106 = sub nsw i32 %j.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx107.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx105.u9_23fixp, i32 0, i32 %sub106, !taffo.info !41
  %arrayidx108.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx107.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp15 = load i32, i32* %arrayidx108.u9_23fixp, align 4, !taffo.info !41
  %47 = lshr i32 %u9_23fixp15, 2, !taffo.info !41
  %add109.s11_21fixp = add i32 %sub104.s11_21fixp, %47, !taffo.info !94
  %48 = lshr i32 1, 1
  %49 = ashr i32 %add109.s11_21fixp, 19, !taffo.info !94
  %50 = call i32 @llvm.smul.fix.i32(i32 %48, i32 %49, i32 2), !taffo.info !96
  %mul110.s9_23fixp = shl i32 %50, 21, !taffo.info !99, !taffo.constinfo !101
  %51 = ashr i32 %mul95.s9_23fixp, 1, !taffo.info !99, !taffo.constinfo !101
  %52 = ashr i32 %mul110.s9_23fixp, 1, !taffo.info !99, !taffo.constinfo !101
  %add111.s10_22fixp = add i32 %51, %52, !taffo.info !104
  %arrayidx112.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %arrayidx113.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx112.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %add114 = add nsw i32 %k.1, 1, !taffo.info !85, !taffo.constinfo !21
  %arrayidx115.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx113.u9_23fixp, i32 0, i32 %add114, !taffo.info !41
  %u9_23fixp16 = load i32, i32* %arrayidx115.u9_23fixp, align 4, !taffo.info !41
  %arrayidx116.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %arrayidx117.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx116.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %arrayidx118.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx117.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp17 = load i32, i32* %arrayidx118.u9_23fixp, align 4, !taffo.info !87
  %53 = shl i32 2, 29
  %54 = lshr i32 %u9_23fixp17, 1, !taffo.info !87
  %55 = ashr i32 %53, 8
  %56 = ashr i32 %54, 1, !taffo.info !87
  %mul119.s11_21fixp = call i32 @llvm.smul.fix.i32(i32 %55, i32 %56, i32 21), !taffo.info !89
  %57 = lshr i32 %u9_23fixp16, 2, !taffo.info !41
  %sub120.s11_21fixp = sub i32 %57, %mul119.s11_21fixp, !taffo.info !92
  %arrayidx121.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %arrayidx122.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx121.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %sub123 = sub nsw i32 %k.1, 1, !taffo.info !2, !taffo.constinfo !21
  %arrayidx124.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx122.u9_23fixp, i32 0, i32 %sub123, !taffo.info !41
  %u9_23fixp18 = load i32, i32* %arrayidx124.u9_23fixp, align 4, !taffo.info !41
  %58 = lshr i32 %u9_23fixp18, 2, !taffo.info !41
  %add125.s11_21fixp = add i32 %sub120.s11_21fixp, %58, !taffo.info !94
  %59 = lshr i32 1, 1
  %60 = ashr i32 %add125.s11_21fixp, 19, !taffo.info !94
  %61 = call i32 @llvm.smul.fix.i32(i32 %59, i32 %60, i32 2), !taffo.info !96
  %mul126.s10_22fixp = shl i32 %61, 20, !taffo.info !107, !taffo.constinfo !101
  %62 = ashr i32 %add111.s10_22fixp, 1, !taffo.info !104
  %63 = ashr i32 %mul126.s10_22fixp, 1, !taffo.info !107, !taffo.constinfo !101
  %add127.s11_21fixp = add i32 %62, %63, !taffo.info !108
  %arrayidx128.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.1, !taffo.info !41
  %arrayidx129.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx128.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %arrayidx130.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx129.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %u9_23fixp19 = load i32, i32* %arrayidx130.u9_23fixp, align 4, !taffo.info !41
  %64 = lshr i32 %u9_23fixp19, 2, !taffo.info !41
  %add131.s11_21fixp = add i32 %add127.s11_21fixp, %64, !taffo.info !110
  %arrayidx132.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.1, !taffo.info !41
  %arrayidx133.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx132.u9_23fixp, i32 0, i32 %j.1, !taffo.info !41
  %arrayidx134.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx133.u9_23fixp, i32 0, i32 %k.1, !taffo.info !41
  %65 = shl i32 %add131.s11_21fixp, 2, !taffo.info !110
  store i32 %65, i32* %arrayidx134.u9_23fixp, align 4, !taffo.info !45
  br label %for.inc135

for.inc135:                                       ; preds = %for.body80
  %inc136 = add nsw i32 %k.1, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond77, !llvm.loop !115

for.end137:                                       ; preds = %for.cond77
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %inc139 = add nsw i32 %j.1, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond73, !llvm.loop !116

for.end140:                                       ; preds = %for.cond73
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %inc142 = add nsw i32 %i.1, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !117

for.end143:                                       ; preds = %for.cond69
  br label %for.inc144

for.inc144:                                       ; preds = %for.end143
  %inc145 = add nsw i32 %t.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !118

for.end146:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [5 x [5 x i32]]* noundef %A.u9_23fixp, [5 x [5 x i32]]* noundef %B.u9_23fixp) #0 !taffo.initweight !119 !taffo.funinfo !120 !taffo.sourceFunction !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !122, !taffo.initweight !124
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125, !taffo.initweight !126
  br i1 %cmp, label %for.body, label %for.end22, !taffo.info !122, !taffo.initweight !127

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !122, !taffo.initweight !124
  %cmp5 = icmp slt i32 %j.0, %n, !taffo.info !125, !taffo.initweight !126
  br i1 %cmp5, label %for.body6, label %for.end19, !taffo.info !122, !taffo.initweight !127

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !122, !taffo.initweight !124
  %cmp8 = icmp slt i32 %k.0, %n, !taffo.info !125, !taffo.initweight !126
  br i1 %cmp8, label %for.body9, label %for.end, !taffo.info !122, !taffo.initweight !127

for.body9:                                        ; preds = %for.cond7
  %add = add nsw i32 %i.0, %j.0, !taffo.info !128, !taffo.initweight !126
  %sub = sub nsw i32 %n, %k.0, !taffo.info !130, !taffo.initweight !126
  %add10 = add nsw i32 %add, %sub, !taffo.info !132, !taffo.initweight !127
  %conv.s9_23fixp = shl i32 %add10, 23, !taffo.info !134
  %0 = shl i32 10, 27
  %1 = ashr i32 %conv.s9_23fixp, 3, !taffo.info !134
  %2 = ashr i32 %0, 7
  %mul.s12_20fixp = call i32 @llvm.smul.fix.i32(i32 %1, i32 %2, i32 20), !taffo.info !135
  %conv11.u3_29fixp = shl i32 %n, 29, !taffo.info !138
  %3 = lshr i32 %conv11.u3_29fixp, 1, !taffo.info !138
  %4 = ashr i32 %3, 8, !taffo.info !138
  %div.s12_20fixp = call i32 @llvm.sdiv.fix.i32(i32 %mul.s12_20fixp, i32 %4, i32 20), !taffo.info !140
  %arrayidx.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %B.u9_23fixp, i32 %i.0, !taffo.info !142
  %arrayidx12.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !142
  %arrayidx13.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx12.u9_23fixp, i32 0, i32 %k.0, !taffo.info !142
  %5 = shl i32 %div.s12_20fixp, 3, !taffo.info !140
  store i32 %5, i32* %arrayidx13.u9_23fixp, align 4, !taffo.info !143
  %arrayidx14.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %A.u9_23fixp, i32 %i.0, !taffo.info !142
  %arrayidx15.u9_23fixp = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx14.u9_23fixp, i32 0, i32 %j.0, !taffo.info !142
  %arrayidx16.u9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx15.u9_23fixp, i32 0, i32 %k.0, !taffo.info !142
  %6 = shl i32 %div.s12_20fixp, 3, !taffo.info !140
  store i32 %6, i32* %arrayidx16.u9_23fixp, align 4, !taffo.info !143
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.info !144, !taffo.initweight !126, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !146

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !144, !taffo.initweight !126, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !147

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !144, !taffo.initweight !126, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !148

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_3d.3_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %p, i32* noundef %val.u9_23fixp, i32 noundef %factor) #0 !taffo.initweight !149 !taffo.funinfo !150 !taffo.sourceFunction !153 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ], !taffo.info !52
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !71
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !52
  %cmp5 = icmp slt i32 %k.0, %p, !taffo.info !71
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p, !taffo.info !154
  %1 = mul nsw i32 %i.0, %0, !taffo.info !73
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %1, !taffo.info !41
  %2 = mul nsw i32 %j.0, %p, !taffo.info !73
  %arrayidx7.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx.u9_23fixp, i32 %2, !taffo.info !41
  %arrayidx8.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx7.u9_23fixp, i32 %k.0, !taffo.info !41
  %u9_23fixp = load i32, i32* %arrayidx8.u9_23fixp, align 4, !taffo.info !41
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !156
  %3 = lshr i32 %u9_23fixp, 1, !taffo.info !41
  %4 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !156
  %5 = ashr i32 %3, 4, !taffo.info !41
  %6 = ashr i32 %4, 8, !taffo.info !156
  %7 = call i32 @llvm.smul.fix.i32(i32 %5, i32 %6, i32 18), !taffo.info !158
  %mul.u13_19fixp = shl i32 %7, 1, !taffo.info !161
  %8 = mul nuw i32 %m, %p, !taffo.info !154
  %9 = mul nsw i32 %i.0, %8, !taffo.info !73
  %arrayidx9.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %9, !taffo.info !41
  %10 = mul nsw i32 %j.0, %p, !taffo.info !73
  %arrayidx10.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx9.u9_23fixp, i32 %10, !taffo.info !41
  %arrayidx11.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx10.u9_23fixp, i32 %k.0, !taffo.info !41
  %11 = shl i32 %mul.u13_19fixp, 4, !taffo.info !161
  store i32 %11, i32* %arrayidx11.u9_23fixp, align 4, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !163

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !164

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !165

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 4.160000e+02}
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
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!35 = distinct !{null, null}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{}
!40 = !{i1 true}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 23}
!43 = !{double 3.200000e+01, double 4.160000e+02}
!44 = !{!"A"}
!45 = !{i1 false, !43, i1 false, i2 -1}
!46 = !{i1 false, i1 false, i1 false, i1 false}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 6.000000e+00}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 1.000000e+00}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 3.600000e+01}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 2.160000e+02}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 2.160000e+02}
!60 = distinct !{!60, !23}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.000000e+00, double 3.600000e+01}
!63 = distinct !{!63, !23}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.000000e+00, double 6.000000e+00}
!66 = distinct !{!66, !23}
!67 = !{i1 false, i1 false, i1 false}
!68 = !{i32 1, !69, i32 1, !0}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 5.000000e+00, double 5.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 1.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 0.000000e+00}
!75 = distinct !{!75, !23}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, !23}
!78 = !{i32 -1, i32 -1, i32 2, i32 2}
!79 = !{i32 1, !16, i32 1, !69, i32 1, !41, i32 1, !41}
!80 = distinct !{null}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 1.200000e+01}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 4.000000e+00, double 4.000000e+00}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 2.000000e+00, double 1.200000e+01}
!87 = !{!88, !43, i1 false, i2 -1}
!88 = !{!"fixp", i32 32, i32 22}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 -32, i32 21}
!91 = !{double 6.400000e+01, double 8.320000e+02}
!92 = !{!90, !93, i1 false, i2 -1}
!93 = !{double -8.000000e+02, double 3.520000e+02}
!94 = !{!90, !95, i1 false, i2 -1}
!95 = !{double -7.680000e+02, double 7.680000e+02}
!96 = !{!97, !98, i1 false, i2 -1}
!97 = !{!"fixp", i32 -32, i32 2}
!98 = !{double -9.600000e+01, double 9.600000e+01}
!99 = !{!100, !98, i1 false, i2 -1}
!100 = !{!"fixp", i32 -32, i32 23}
!101 = !{!102, i1 false}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 1.250000e-01, double 1.250000e-01}
!104 = !{!105, !106, i1 false, i2 -1}
!105 = !{!"fixp", i32 -32, i32 22}
!106 = !{double -1.920000e+02, double 1.920000e+02}
!107 = !{!105, !98, i1 false, i2 -1}
!108 = !{!90, !109, i1 false, i2 -1}
!109 = !{double -2.880000e+02, double 2.880000e+02}
!110 = !{!90, !111, i1 false, i2 -1}
!111 = !{double -2.560000e+02, double 7.040000e+02}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
!119 = !{i32 -1, i32 2, i32 2}
!120 = !{i32 1, !69, i32 1, !41, i32 1, !41}
!121 = distinct !{null}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 8.000000e+01}
!124 = !{i32 0}
!125 = !{i1 false, !53, i1 false, i2 -1}
!126 = !{i32 2}
!127 = !{i32 3}
!128 = !{i1 false, !129, i1 false, i2 -1}
!129 = !{double 0.000000e+00, double 1.600000e+02}
!130 = !{i1 false, !131, i1 false, i2 -1}
!131 = !{double -7.500000e+01, double 5.000000e+00}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double -7.500000e+01, double 1.650000e+02}
!134 = !{!100, !133, i1 false, i2 -1}
!135 = !{!136, !137, i1 false, i2 -1}
!136 = !{!"fixp", i32 -32, i32 20}
!137 = !{double -7.500000e+02, double 1.650000e+03}
!138 = !{!139, !70, i1 false, i2 1}
!139 = !{!"fixp", i32 32, i32 29}
!140 = !{!136, !141, i1 false, i2 -1}
!141 = !{double -1.500000e+02, double 3.300000e+02}
!142 = !{!42, !43, i1 false, i2 1}
!143 = !{i1 false, i1 false, i1 false, i2 1}
!144 = !{i1 false, !145, i1 false, i2 -1}
!145 = !{double 1.000000e+00, double 8.100000e+01}
!146 = distinct !{!146, !23}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
!149 = !{i32 -1, i32 -1, i32 -1, i32 3, i32 -1}
!150 = !{i32 1, !69, i32 1, !69, i32 1, !69, i32 1, !41, i32 1, !151}
!151 = !{i1 false, !152, i1 false, i2 0}
!152 = !{double 1.600000e+01, double 1.600000e+01}
!153 = !{void (i32, i32, i32, float*, i32)* @scale_3d}
!154 = !{i1 false, !155, i1 false, i2 0}
!155 = !{double 2.500000e+01, double 2.500000e+01}
!156 = !{!157, !152, i1 false, i2 1}
!157 = !{!"fixp", i32 32, i32 27}
!158 = !{!159, !160, i1 false, i2 -1}
!159 = !{!"fixp", i32 -32, i32 18}
!160 = !{double 5.120000e+02, double 6.656000e+03}
!161 = !{!162, !160, i1 false, i2 -1}
!162 = !{!"fixp", i32 32, i32 19}
!163 = distinct !{!163, !23}
!164 = distinct !{!164, !23}
!165 = distinct !{!165, !23}
