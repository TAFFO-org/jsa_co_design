; ModuleID = './build/bin/fixed/syrk/24/syrk-standard-512-fixed-24.out.ll.4.taffotmp.ll'
source_filename = "./sources/syrk.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !42
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !45
  %C.u21_11fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.u9_23fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !50
  %arraydecay.u21_11fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u21_11fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay5.u9_23fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !50
  call void @init_array.4_fixp(i32 16, i32 10, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u21_11fixp, [10 x i32]* %arraydecay5.u9_23fixp), !taffo.info !53, !taffo.constinfo !54
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 512), !taffo.info !53, !taffo.constinfo !55
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 512), !taffo.info !56, !taffo.constinfo !55
  %arraydecay6.u21_11fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u21_11fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u21_11fixp = bitcast [16 x i32]* %arraydecay6.u21_11fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 16, i32 16, i32* %u21_11fixp, i32 512), !taffo.info !57, !taffo.constinfo !58, !taffo.target !49
  %arraydecay7.u9_23fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !50
  %u9_23fixp = bitcast [10 x i32]* %arraydecay7.u9_23fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u9_23fixp, i32 512), !taffo.info !59, !taffo.constinfo !58
  call void @timer_start(), !taffo.constinfo !60
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay8.u21_11fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u21_11fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay9.u9_23fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u9_23fixp, i32 0, i32 0, !taffo.info !50
  call void @kernel_syrk.3_fixp(i32 16, i32 10, i32 %u2_30fixp, i32 %u2_30fixp1, [16 x i32]* %arraydecay8.u21_11fixp, [10 x i32]* %arraydecay9.u9_23fixp), !taffo.info !53, !taffo.constinfo !54
  call void @timer_stop(), !taffo.constinfo !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !61
  %cmp11 = icmp sle i32 %j.0, %i.0, !taffo.info !63
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %arrayidx.u21_11fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u21_11fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx13.u21_11fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u21_11fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u21_11fixp2 = load i32, i32* %arrayidx13.u21_11fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u21_11fixp2 to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 2.048000e+03, !taffo.info !47, !taffo.target !49
  %arrayidx14 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx15, align 4, !taffo.info !57, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %inc = add nsw i32 %j.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond10, !llvm.loop !67

for.end:                                          ; preds = %for.cond10
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !68

for.end18:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !55
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !63
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !72
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !74
  %add = add nsw i32 %mul, %j.0, !taffo.info !74
  %rem = srem i32 %add, 20, !taffo.info !74, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !72
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !55
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !76
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !77

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !78

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !79 !taffo.funinfo !80 !taffo.sourceFunction !83 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk.3_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u21_11fixp, [10 x i32]* noundef %A.u9_23fixp) #0 !taffo.initweight !84 !taffo.funinfo !85 !taffo.sourceFunction !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !63
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !63
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u21_11fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u21_11fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u21_11fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u21_11fixp, i32 0, i32 %j.0, !taffo.info !47
  %u21_11fixp = load i32, i32* %arrayidx4.u21_11fixp, align 4, !taffo.info !47
  %0 = lshr i32 %u21_11fixp, 1, !taffo.info !47
  %1 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %2 = ashr i32 %1, 19, !taffo.info !45
  %3 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %2, i32 10), !taffo.info !87
  %mul.u21_11fixp = shl i32 %3, 1, !taffo.info !90
  store i32 %mul.u21_11fixp, i32* %arrayidx4.u21_11fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !91

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !63
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !72
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !63
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !63
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !50
  %arrayidx12.u9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u9_23fixp, i32 0, i32 %k.0, !taffo.info !50
  %u9_23fixp = load i32, i32* %arrayidx12.u9_23fixp, align 4, !taffo.info !92
  %4 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %5 = lshr i32 %u9_23fixp, 1, !taffo.info !92
  %6 = ashr i32 %4, 8, !taffo.info !42
  %7 = ashr i32 %5, 1, !taffo.info !92
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 21), !taffo.info !94
  %mul13.u10_22fixp = shl i32 %8, 1, !taffo.info !97
  %arrayidx14.u9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u9_23fixp, i32 %j.1, !taffo.info !50
  %arrayidx15.u9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u9_23fixp, i32 0, i32 %k.0, !taffo.info !50
  %u9_23fixp2 = load i32, i32* %arrayidx15.u9_23fixp, align 4, !taffo.info !50
  %9 = lshr i32 %mul13.u10_22fixp, 1, !taffo.info !97
  %10 = lshr i32 %u9_23fixp2, 1, !taffo.info !50
  %11 = ashr i32 %9, 11, !taffo.info !97
  %12 = ashr i32 %10, 12, !taffo.info !50
  %13 = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 10), !taffo.info !98
  %mul16.u21_11fixp = shl i32 %13, 1, !taffo.info !100
  %arrayidx17.u21_11fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u21_11fixp, i32 %i.0, !taffo.info !47
  %arrayidx18.u21_11fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17.u21_11fixp, i32 0, i32 %j.1, !taffo.info !47
  %u21_11fixp1 = load i32, i32* %arrayidx18.u21_11fixp, align 4, !taffo.info !47
  %add.u21_11fixp = add i32 %u21_11fixp1, %mul16.u21_11fixp, !taffo.info !101
  store i32 %add.u21_11fixp, i32* %arrayidx18.u21_11fixp, align 4, !taffo.info !57
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !103

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !104

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !105

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u21_11fixp, [10 x i32]* noundef %A.u9_23fixp) #0 !taffo.initweight !106 !taffo.funinfo !85 !taffo.sourceFunction !107 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !53, !taffo.constinfo !108
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !56, !taffo.constinfo !110
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !113, !taffo.initweight !114
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !115, !taffo.initweight !116
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !117, !taffo.initweight !119

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !120, !taffo.initweight !114
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !115, !taffo.initweight !116
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !122, !taffo.initweight !119

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !123, !taffo.initweight !116
  %add = add nsw i32 %mul, 1, !taffo.info !125, !taffo.initweight !119, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !127, !taffo.initweight !129
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !130
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !132
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !130
  %1 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !132
  %2 = ashr i32 %0, 1, !taffo.info !130
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !134
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !137
  %arrayidx.u9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u9_23fixp, i32 %i.0, !taffo.info !139
  %arrayidx7.u9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !139
  %4 = lshr i32 %div.u1_31fixp, 8, !taffo.info !137
  store i32 %4, i32* %arrayidx7.u9_23fixp, align 4, !taffo.info !140
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !141, !taffo.initweight !116, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !143

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !144, !taffo.initweight !116, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !145

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !113, !taffo.initweight !114
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !115, !taffo.initweight !116
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !117, !taffo.initweight !119

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !120, !taffo.initweight !114
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.info !146, !taffo.initweight !116
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !122, !taffo.initweight !119

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.info !123, !taffo.initweight !116
  %add20 = add nsw i32 %mul19, 2, !taffo.info !147, !taffo.initweight !119, !taffo.constinfo !21
  %rem21 = srem i32 %add20, %m, !taffo.info !149, !taffo.initweight !129
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !151
  %conv23.u4_28fixp = shl i32 %m, 28, !taffo.info !152
  %5 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !151
  %6 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !152
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !153
  %div24.u1_31fixp = shl i32 %7, 4, !taffo.info !156
  %arrayidx25.u21_11fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u21_11fixp, i32 %i.1, !taffo.info !157
  %arrayidx26.u21_11fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx25.u21_11fixp, i32 0, i32 %j.1, !taffo.info !157
  %8 = lshr i32 %div24.u1_31fixp, 20, !taffo.info !156
  store i32 %8, i32* %arrayidx26.u21_11fixp, align 4, !taffo.info !140
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !141, !taffo.initweight !116, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !158

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !144, !taffo.initweight !116, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !159

for.end32:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u21_11fixp, i32 noundef %factor) #0 !taffo.initweight !160 !taffo.funinfo !161 !taffo.sourceFunction !162 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !63
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !72
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !74
  %arrayidx.u21_11fixp = getelementptr inbounds i32, i32* %val.u21_11fixp, i32 %0, !taffo.info !47
  %arrayidx4.u21_11fixp = getelementptr inbounds i32, i32* %arrayidx.u21_11fixp, i32 %j.0, !taffo.info !47
  %u21_11fixp = load i32, i32* %arrayidx4.u21_11fixp, align 4, !taffo.info !47
  %1 = uitofp i32 %u21_11fixp to float, !taffo.info !47
  %2 = fdiv float %1, 2.048000e+03, !taffo.info !47
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !163
  %3 = uitofp i32 %conv.u10_22fixp to float, !taffo.info !163
  %4 = fdiv float %3, 0x4150000000000000, !taffo.info !163
  %mul.1flp = fmul float %2, %4, !taffo.info !164
  %5 = mul nsw i32 %i.0, %m, !taffo.info !74
  %arrayidx5.u21_11fixp = getelementptr inbounds i32, i32* %val.u21_11fixp, i32 %5, !taffo.info !47
  %arrayidx6.u21_11fixp = getelementptr inbounds i32, i32* %arrayidx5.u21_11fixp, i32 %j.0, !taffo.info !47
  %6 = fmul float 2.048000e+03, %mul.1flp, !taffo.info !164
  %7 = fptoui float %6 to i32, !taffo.info !164
  store i32 %7, i32* %arrayidx6.u21_11fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !167

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !168

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u9_23fixp, i32 noundef %factor) #0 !taffo.initweight !160 !taffo.funinfo !169 !taffo.sourceFunction !162 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !63
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !72
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !74
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %0, !taffo.info !50
  %arrayidx4.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx.u9_23fixp, i32 %j.0, !taffo.info !50
  %u9_23fixp = load i32, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !50
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !163
  %1 = lshr i32 %u9_23fixp, 1, !taffo.info !50
  %2 = lshr i32 %conv.u10_22fixp, 1, !taffo.info !163
  %3 = ashr i32 %1, 9, !taffo.info !50
  %4 = ashr i32 %2, 8, !taffo.info !163
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 13), !taffo.info !170
  %mul.u18_14fixp = shl i32 %5, 1, !taffo.info !173
  %6 = mul nsw i32 %i.0, %m, !taffo.info !74
  %arrayidx5.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %6, !taffo.info !50
  %arrayidx6.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx5.u9_23fixp, i32 %j.0, !taffo.info !50
  %7 = shl i32 %mul.u18_14fixp, 9, !taffo.info !173
  store i32 %7, i32* %arrayidx6.u9_23fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !175

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !176

for.end9:                                         ; preds = %for.cond
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
!1 = !{double 0.000000e+00, double 0x4139CFAE20000000}
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
!26 = distinct !{null, null}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null, null}
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
!45 = !{!43, !46, i1 false, i2 -1}
!46 = !{double 1.200000e+00, double 1.200000e+00}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 11}
!49 = !{!"C"}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 23}
!52 = !{double 0.000000e+00, double 4.800000e+02}
!53 = !{i1 false, !44, i1 false, i2 -1}
!54 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!55 = !{i1 false, i1 false, i1 false}
!56 = !{i1 false, !46, i1 false, i2 -1}
!57 = !{i1 false, !1, i1 false, i2 -1}
!58 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, !52, i1 false, i2 -1}
!60 = !{i1 false}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 1.700000e+01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 0.000000e+00, double 1.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 1.700000e+01}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = !{i32 1, !70, i32 1, !0}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.600000e+01, double 1.600000e+01}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 1.000000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 0.000000e+00}
!76 = !{i1 false, i1 false, i1 false, i1 false}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = !{i32 1, i32 -1}
!80 = !{i32 1, !42, i32 1, !81}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 5.120000e+02, double 5.120000e+02}
!83 = !{void (float*, i32)* @scale_scalar}
!84 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!85 = !{i32 1, !70, i32 1, !16, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50}
!86 = distinct !{null}
!87 = !{!88, !89, i1 false, i2 -1}
!88 = !{!"fixp", i32 -32, i32 10}
!89 = !{double 0.000000e+00, double 0x413EF93759999999}
!90 = !{!48, !89, i1 false, i2 -1}
!91 = distinct !{!91, !23}
!92 = !{!93, !52, i1 false, i2 -1}
!93 = !{!"fixp", i32 32, i32 22}
!94 = !{!95, !96, i1 false, i2 -1}
!95 = !{!"fixp", i32 -32, i32 21}
!96 = !{double 0.000000e+00, double 7.200000e+02}
!97 = !{!93, !96, i1 false, i2 -1}
!98 = !{!88, !99, i1 false, i2 -1}
!99 = !{double 0.000000e+00, double 3.456000e+05}
!100 = !{!48, !99, i1 false, i2 -1}
!101 = !{!48, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 0x413F15AE20000000}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !23}
!105 = distinct !{!105, !23}
!106 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2}
!107 = distinct !{null}
!108 = !{!109, i1 false}
!109 = !{i1 false, !44, i1 false, i2 0}
!110 = !{!111, i1 false}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!113 = !{i1 false, !62, i1 false, i2 1}
!114 = !{i32 0}
!115 = !{i1 false, !64, i1 false, i2 1}
!116 = !{i32 2}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 0.000000e+00, double 1.600000e+01}
!119 = !{i32 3}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 0.000000e+00, double 1.100000e+01}
!122 = !{i1 false, !3, i1 false, i2 1}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 0.000000e+00, double 1.600000e+02}
!125 = !{i1 false, !126, i1 false, i2 1}
!126 = !{double 1.000000e+00, double 1.610000e+02}
!127 = !{i1 false, !128, i1 false, i2 1}
!128 = !{double 0.000000e+00, double 1.500000e+01}
!129 = !{i32 4}
!130 = !{!131, !128, i1 false, i2 1}
!131 = !{!"fixp", i32 32, i32 28}
!132 = !{!133, !71, i1 false, i2 1}
!133 = !{!"fixp", i32 32, i32 27}
!134 = !{!135, !136, i1 false, i2 1}
!135 = !{!"fixp", i32 -32, i32 26}
!136 = !{double 0.000000e+00, double 9.375000e-01}
!137 = !{!138, !136, i1 false, i2 1}
!138 = !{!"fixp", i32 32, i32 31}
!139 = !{!51, !52, i1 false, i2 1}
!140 = !{i1 false, i1 false, i1 false, i2 1}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 1.000000e+00, double 1.100000e+01}
!143 = distinct !{!143, !23}
!144 = !{i1 false, !66, i1 false, i2 1}
!145 = distinct !{!145, !23}
!146 = !{i1 false, !73, i1 false, i2 1}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double 2.000000e+00, double 1.620000e+02}
!149 = !{i1 false, !150, i1 false, i2 1}
!150 = !{double 0.000000e+00, double 9.000000e+00}
!151 = !{!131, !150, i1 false, i2 1}
!152 = !{!131, !17, i1 false, i2 1}
!153 = !{!154, !155, i1 false, i2 1}
!154 = !{!"fixp", i32 -32, i32 27}
!155 = !{double 0.000000e+00, double 9.000000e-01}
!156 = !{!138, !155, i1 false, i2 1}
!157 = !{!48, !1, i1 false, i2 1}
!158 = distinct !{!158, !23}
!159 = distinct !{!159, !23}
!160 = !{i32 -1, i32 -1, i32 3, i32 -1}
!161 = !{i32 1, !70, i32 1, !70, i32 1, !47, i32 1, !81}
!162 = !{void (i32, i32, float*, i32)* @scale_2d}
!163 = !{!93, !82, i1 false, i2 1}
!164 = !{!165, !166, i1 false, i2 -1}
!165 = !{!"float", i32 1, double 0x41C9CFAE20000000}
!166 = !{double 0.000000e+00, double 0x41C9CFAE20000000}
!167 = distinct !{!167, !23}
!168 = distinct !{!168, !23}
!169 = !{i32 1, !70, i32 1, !16, i32 1, !50, i32 1, !81}
!170 = !{!171, !172, i1 false, i2 -1}
!171 = !{!"fixp", i32 -32, i32 13}
!172 = !{double 0.000000e+00, double 2.457600e+05}
!173 = !{!174, !172, i1 false, i2 -1}
!174 = !{!"fixp", i32 32, i32 14}
!175 = distinct !{!175, !23}
!176 = distinct !{!176, !23}
