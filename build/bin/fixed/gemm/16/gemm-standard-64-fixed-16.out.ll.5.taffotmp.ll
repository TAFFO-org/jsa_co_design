; ModuleID = './build/bin/fixed/gemm/16/gemm-standard-64-fixed-16.out.ll.4.taffotmp.ll'
source_filename = "./sources/gemm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [10 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
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
  %C.u15_17fixp = alloca [10 x [12 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.u6_26fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !50
  %B.u6_26fixp = alloca [16 x [12 x i32]], align 4, !taffo.info !53
  %arraydecay.u15_17fixp = getelementptr inbounds [10 x [12 x i32]], [10 x [12 x i32]]* %C.u15_17fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay6.u6_26fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay7.u6_26fixp = getelementptr inbounds [16 x [12 x i32]], [16 x [12 x i32]]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.4_fixp(i32 10, i32 12, i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [12 x i32]* %arraydecay.u15_17fixp, [16 x i32]* %arraydecay6.u6_26fixp, [12 x i32]* %arraydecay7.u6_26fixp), !taffo.info !55, !taffo.constinfo !56
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 64), !taffo.info !55, !taffo.constinfo !57
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 64), !taffo.info !58, !taffo.constinfo !57
  %arraydecay8.u15_17fixp = getelementptr inbounds [10 x [12 x i32]], [10 x [12 x i32]]* %C.u15_17fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u15_17fixp = bitcast [12 x i32]* %arraydecay8.u15_17fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 10, i32 12, i32* %u15_17fixp, i32 64), !taffo.info !59, !taffo.constinfo !60, !taffo.target !49
  %arraydecay9.u6_26fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !50
  %u6_26fixp = bitcast [16 x i32]* %arraydecay9.u6_26fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 10, i32 16, i32* %u6_26fixp, i32 64), !taffo.info !61, !taffo.constinfo !60
  %arraydecay10.u6_26fixp = getelementptr inbounds [16 x [12 x i32]], [16 x [12 x i32]]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !53
  %u6_26fixp2 = bitcast [12 x i32]* %arraydecay10.u6_26fixp to i32*, !taffo.info !53
  call void @scale_2d.6_fixp(i32 16, i32 12, i32* %u6_26fixp2, i32 64), !taffo.info !62, !taffo.constinfo !60
  call void @timer_start(), !taffo.constinfo !63
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay11.u15_17fixp = getelementptr inbounds [10 x [12 x i32]], [10 x [12 x i32]]* %C.u15_17fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay12.u6_26fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay13.u6_26fixp = getelementptr inbounds [16 x [12 x i32]], [16 x [12 x i32]]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !53
  call void @kernel_gemm.3_fixp(i32 10, i32 12, i32 16, i32 %u2_30fixp, i32 %u2_30fixp1, [12 x i32]* %arraydecay11.u15_17fixp, [16 x i32]* %arraydecay12.u6_26fixp, [12 x i32]* %arraydecay13.u6_26fixp), !taffo.info !55, !taffo.constinfo !56
  call void @timer_stop(), !taffo.constinfo !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp15 = icmp slt i32 %j.0, 12, !taffo.info !66
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx.u15_17fixp = getelementptr inbounds [10 x [12 x i32]], [10 x [12 x i32]]* %C.u15_17fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx17.u15_17fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u15_17fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u15_17fixp3 = load i32, i32* %arrayidx17.u15_17fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u15_17fixp3 to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 1.310720e+05, !taffo.info !47, !taffo.target !49
  %arrayidx18 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx19, align 4, !taffo.info !59, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !70, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !72

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !75

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !76
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nj, [12 x float]* noundef %C) #0 !taffo.initweight !27 !taffo.funinfo !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !82
  %add = add nsw i32 %mul, %j.0, !taffo.info !82
  %rem = srem i32 %add, 20, !taffo.info !82, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !80
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !57
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !76
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !84

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !85

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !90 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [12 x i32]* noundef %C.u15_17fixp, [16 x i32]* noundef %A.u6_26fixp, [12 x i32]* noundef %B.u6_26fixp) #0 !taffo.initweight !91 !taffo.funinfo !92 !taffo.sourceFunction !95 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !55, !taffo.constinfo !96
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !58, !taffo.constinfo !98
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !101, !taffo.initweight !103
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !104, !taffo.initweight !105
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !106, !taffo.initweight !108

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !101, !taffo.initweight !103
  %cmp4 = icmp slt i32 %j.0, %nj, !taffo.info !104, !taffo.initweight !105
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !106, !taffo.initweight !108

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !109, !taffo.initweight !105
  %add = add nsw i32 %mul, 1, !taffo.info !111, !taffo.initweight !108, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !113, !taffo.initweight !115
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !116
  %conv6.u4_28fixp = shl i32 %ni, 28, !taffo.info !118
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !116
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !118
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !119
  %div.u1_31fixp = shl i32 %2, 4, !taffo.info !122
  %arrayidx.u15_17fixp = getelementptr inbounds [12 x i32], [12 x i32]* %C.u15_17fixp, i32 %i.0, !taffo.info !124
  %arrayidx7.u15_17fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u15_17fixp, i32 0, i32 %j.0, !taffo.info !124
  %3 = lshr i32 %div.u1_31fixp, 14, !taffo.info !122
  store i32 %3, i32* %arrayidx7.u15_17fixp, align 4, !taffo.info !125
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !126, !taffo.initweight !105, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !128

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !126, !taffo.initweight !105, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !101, !taffo.initweight !103
  %cmp12 = icmp slt i32 %i.1, %ni, !taffo.info !104, !taffo.initweight !105
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !106, !taffo.initweight !108

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !101, !taffo.initweight !103
  %cmp16 = icmp slt i32 %j.1, %nk, !taffo.info !104, !taffo.initweight !105
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !106, !taffo.initweight !108

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !126, !taffo.initweight !105, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !130, !taffo.initweight !105
  %rem21 = srem i32 %mul20, %nk, !taffo.info !132, !taffo.initweight !108
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !134
  %conv23.u5_27fixp = shl i32 %nk, 27, !taffo.info !135
  %4 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !134
  %5 = lshr i32 %conv23.u5_27fixp, 1, !taffo.info !135
  %6 = ashr i32 %4, 1, !taffo.info !134
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %5, i32 26), !taffo.info !137
  %div24.u1_31fixp = shl i32 %7, 5, !taffo.info !140
  %arrayidx25.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u6_26fixp, i32 %i.1, !taffo.info !141
  %arrayidx26.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx25.u6_26fixp, i32 0, i32 %j.1, !taffo.info !141
  %8 = lshr i32 %div24.u1_31fixp, 5, !taffo.info !140
  store i32 %8, i32* %arrayidx26.u6_26fixp, align 4, !taffo.info !125
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !126, !taffo.initweight !105, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !142

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !126, !taffo.initweight !105, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !143

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc53, %for.inc52 ], !taffo.info !101, !taffo.initweight !103
  %cmp34 = icmp slt i32 %i.2, %nk, !taffo.info !104, !taffo.initweight !105
  br i1 %cmp34, label %for.body36, label %for.end54, !taffo.info !106, !taffo.initweight !108

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc50, %for.inc49 ], !taffo.info !101, !taffo.initweight !103
  %cmp38 = icmp slt i32 %j.2, %nj, !taffo.info !104, !taffo.initweight !105
  br i1 %cmp38, label %for.body40, label %for.end51, !taffo.info !106, !taffo.initweight !108

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 2, !taffo.info !144, !taffo.initweight !105, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !146, !taffo.initweight !105
  %rem43 = srem i32 %mul42, %nj, !taffo.info !148, !taffo.initweight !108
  %conv44.u4_28fixp = shl i32 %rem43, 28, !taffo.info !149
  %conv45.u4_28fixp = shl i32 %nj, 28, !taffo.info !150
  %9 = lshr i32 %conv44.u4_28fixp, 1, !taffo.info !149
  %10 = lshr i32 %conv45.u4_28fixp, 1, !taffo.info !150
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !151
  %div46.u1_31fixp = shl i32 %11, 4, !taffo.info !153
  %arrayidx47.u6_26fixp = getelementptr inbounds [12 x i32], [12 x i32]* %B.u6_26fixp, i32 %i.2, !taffo.info !154
  %arrayidx48.u6_26fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx47.u6_26fixp, i32 0, i32 %j.2, !taffo.info !154
  %12 = lshr i32 %div46.u1_31fixp, 5, !taffo.info !153
  store i32 %12, i32* %arrayidx48.u6_26fixp, align 4, !taffo.info !125
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %inc50 = add nsw i32 %j.2, 1, !taffo.info !126, !taffo.initweight !105, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !155

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %inc53 = add nsw i32 %i.2, 1, !taffo.info !126, !taffo.initweight !105, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !156

for.end54:                                        ; preds = %for.cond33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm.3_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [12 x i32]* noundef %C.u15_17fixp, [16 x i32]* noundef %A.u6_26fixp, [12 x i32]* noundef %B.u6_26fixp) #0 !taffo.initweight !157 !taffo.funinfo !92 !taffo.sourceFunction !158 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u15_17fixp = getelementptr inbounds [12 x i32], [12 x i32]* %C.u15_17fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u15_17fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u15_17fixp, i32 0, i32 %j.0, !taffo.info !47
  %u15_17fixp = load i32, i32* %arrayidx4.u15_17fixp, align 4, !taffo.info !47
  %0 = lshr i32 %u15_17fixp, 1, !taffo.info !47
  %1 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %2 = ashr i32 %1, 13, !taffo.info !45
  %3 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %2, i32 16), !taffo.info !159
  %mul.u15_17fixp = shl i32 %3, 1, !taffo.info !162
  store i32 %mul.u15_17fixp, i32* %arrayidx4.u15_17fixp, align 4, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !163

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !66
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !80
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !66
  %cmp9 = icmp slt i32 %j.1, %nj, !taffo.info !80
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u6_26fixp, i32 %i.0, !taffo.info !50
  %arrayidx12.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx11.u6_26fixp, i32 0, i32 %k.0, !taffo.info !50
  %u6_26fixp = load i32, i32* %arrayidx12.u6_26fixp, align 4, !taffo.info !164
  %4 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %5 = lshr i32 %u6_26fixp, 1, !taffo.info !164
  %6 = ashr i32 %4, 5, !taffo.info !42
  %7 = ashr i32 %5, 1, !taffo.info !164
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 24), !taffo.info !166
  %mul13.u7_25fixp = shl i32 %8, 1, !taffo.info !169
  %arrayidx14.u6_26fixp = getelementptr inbounds [12 x i32], [12 x i32]* %B.u6_26fixp, i32 %k.0, !taffo.info !53
  %arrayidx15.u6_26fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx14.u6_26fixp, i32 0, i32 %j.1, !taffo.info !53
  %u6_26fixp2 = load i32, i32* %arrayidx15.u6_26fixp, align 4, !taffo.info !53
  %9 = lshr i32 %mul13.u7_25fixp, 1, !taffo.info !169
  %10 = lshr i32 %u6_26fixp2, 1, !taffo.info !53
  %11 = ashr i32 %9, 8, !taffo.info !169
  %12 = ashr i32 %10, 9, !taffo.info !53
  %13 = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 16), !taffo.info !170
  %mul16.u15_17fixp = shl i32 %13, 1, !taffo.info !172
  %arrayidx17.u15_17fixp = getelementptr inbounds [12 x i32], [12 x i32]* %C.u15_17fixp, i32 %i.0, !taffo.info !47
  %arrayidx18.u15_17fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx17.u15_17fixp, i32 0, i32 %j.1, !taffo.info !47
  %u15_17fixp1 = load i32, i32* %arrayidx18.u15_17fixp, align 4, !taffo.info !47
  %add.u15_17fixp = add i32 %u15_17fixp1, %mul16.u15_17fixp, !taffo.info !173
  store i32 %add.u15_17fixp, i32* %arrayidx18.u15_17fixp, align 4, !taffo.info !59
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !175

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !176

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !177

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !178 !taffo.funinfo !179 !taffo.sourceFunction !180 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %0, !taffo.info !50
  %arrayidx4.u6_26fixp = getelementptr inbounds i32, i32* %arrayidx.u6_26fixp, i32 %j.0, !taffo.info !50
  %u6_26fixp = load i32, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !50
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !181
  %1 = lshr i32 %u6_26fixp, 1, !taffo.info !50
  %2 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !181
  %3 = ashr i32 %1, 6, !taffo.info !50
  %4 = ashr i32 %2, 5, !taffo.info !181
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 19), !taffo.info !182
  %mul.u12_20fixp = shl i32 %5, 1, !taffo.info !185
  %6 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx5.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %6, !taffo.info !50
  %arrayidx6.u6_26fixp = getelementptr inbounds i32, i32* %arrayidx5.u6_26fixp, i32 %j.0, !taffo.info !50
  %7 = shl i32 %mul.u12_20fixp, 6, !taffo.info !185
  store i32 %7, i32* %arrayidx6.u6_26fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !187

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !188

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u15_17fixp, i32 noundef %factor) #0 !taffo.initweight !178 !taffo.funinfo !189 !taffo.sourceFunction !180 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %0, !taffo.info !47
  %arrayidx4.u15_17fixp = getelementptr inbounds i32, i32* %arrayidx.u15_17fixp, i32 %j.0, !taffo.info !47
  %u15_17fixp = load i32, i32* %arrayidx4.u15_17fixp, align 4, !taffo.info !47
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !181
  %1 = lshr i32 %u15_17fixp, 1, !taffo.info !47
  %2 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !181
  %3 = ashr i32 %1, 6, !taffo.info !47
  %4 = ashr i32 %2, 14, !taffo.info !181
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 10), !taffo.info !190
  %mul.u21_11fixp = shl i32 %5, 1, !taffo.info !193
  %6 = mul nsw i32 %i.0, %m, !taffo.info !82
  %arrayidx5.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %6, !taffo.info !47
  %arrayidx6.u15_17fixp = getelementptr inbounds i32, i32* %arrayidx5.u15_17fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u21_11fixp, 6, !taffo.info !193
  store i32 %7, i32* %arrayidx6.u15_17fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !195

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !196

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40D90F5C1FFF79C8}
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
!32 = distinct !{null, null, null}
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
!48 = !{!"fixp", i32 32, i32 17}
!49 = !{!"C"}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 26}
!52 = !{double 0.000000e+00, double 6.000000e+01}
!53 = !{!51, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x404D55556084A516}
!55 = !{i1 false, !44, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, i1 false, i1 false}
!58 = !{i1 false, !46, i1 false, i2 -1}
!59 = !{i1 false, !1, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !52, i1 false, i2 -1}
!62 = !{i1 false, !54, i1 false, i2 -1}
!63 = !{i1 false}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.100000e+01}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 1.000000e+00}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 1.430000e+02}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 1.430000e+02}
!72 = distinct !{!72, !23}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.100000e+01}
!75 = distinct !{!75, !23}
!76 = !{i1 false, i1 false, i1 false, i1 false}
!77 = !{i32 1, !16, i32 1, !78, i32 1, !0}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.200000e+01, double 1.200000e+01}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 1.000000e+00}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 0.000000e+00}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = !{i32 1, i32 -1}
!87 = !{i32 1, !42, i32 1, !88}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 6.400000e+01, double 6.400000e+01}
!90 = !{void (float*, i32)* @scale_scalar}
!91 = !{i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!92 = !{i32 1, !16, i32 1, !78, i32 1, !93, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 1.600000e+01, double 1.600000e+01}
!95 = distinct !{null}
!96 = !{!97, i1 false}
!97 = !{i1 false, !44, i1 false, i2 0}
!98 = !{!99, i1 false}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!101 = !{i1 false, !102, i1 false, i2 1}
!102 = !{double 0.000000e+00, double 1.700000e+01}
!103 = !{i32 0}
!104 = !{i1 false, !67, i1 false, i2 1}
!105 = !{i32 2}
!106 = !{i1 false, !107, i1 false, i2 1}
!107 = !{double 0.000000e+00, double 1.600000e+01}
!108 = !{i32 3}
!109 = !{i1 false, !110, i1 false, i2 1}
!110 = !{double 0.000000e+00, double 2.560000e+02}
!111 = !{i1 false, !112, i1 false, i2 1}
!112 = !{double 1.000000e+00, double 2.570000e+02}
!113 = !{i1 false, !114, i1 false, i2 1}
!114 = !{double 0.000000e+00, double 9.000000e+00}
!115 = !{i32 4}
!116 = !{!117, !114, i1 false, i2 1}
!117 = !{!"fixp", i32 32, i32 28}
!118 = !{!117, !17, i1 false, i2 1}
!119 = !{!120, !121, i1 false, i2 1}
!120 = !{!"fixp", i32 -32, i32 27}
!121 = !{double 0.000000e+00, double 9.000000e-01}
!122 = !{!123, !121, i1 false, i2 1}
!123 = !{!"fixp", i32 32, i32 31}
!124 = !{!48, !1, i1 false, i2 1}
!125 = !{i1 false, i1 false, i1 false, i2 1}
!126 = !{i1 false, !127, i1 false, i2 1}
!127 = !{double 1.000000e+00, double 1.700000e+01}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = !{i1 false, !131, i1 false, i2 1}
!131 = !{double 0.000000e+00, double 2.720000e+02}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 1.500000e+01}
!134 = !{!117, !133, i1 false, i2 1}
!135 = !{!136, !94, i1 false, i2 1}
!136 = !{!"fixp", i32 32, i32 27}
!137 = !{!138, !139, i1 false, i2 1}
!138 = !{!"fixp", i32 -32, i32 26}
!139 = !{double 0.000000e+00, double 9.375000e-01}
!140 = !{!123, !139, i1 false, i2 1}
!141 = !{!51, !52, i1 false, i2 1}
!142 = distinct !{!142, !23}
!143 = distinct !{!143, !23}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 2.000000e+00, double 1.800000e+01}
!146 = !{i1 false, !147, i1 false, i2 1}
!147 = !{double 0.000000e+00, double 2.880000e+02}
!148 = !{i1 false, !65, i1 false, i2 1}
!149 = !{!117, !65, i1 false, i2 1}
!150 = !{!117, !79, i1 false, i2 1}
!151 = !{!120, !152, i1 false, i2 1}
!152 = !{double 0.000000e+00, double 0x3FED555555555555}
!153 = !{!123, !152, i1 false, i2 1}
!154 = !{!51, !54, i1 false, i2 1}
!155 = distinct !{!155, !23}
!156 = distinct !{!156, !23}
!157 = !{i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!158 = distinct !{null}
!159 = !{!160, !161, i1 false, i2 -1}
!160 = !{!"fixp", i32 -32, i32 16}
!161 = !{double 0.000000e+00, double 0x40DE126E8CCC2BBC}
!162 = !{!48, !161, i1 false, i2 -1}
!163 = distinct !{!163, !23}
!164 = !{!165, !52, i1 false, i2 -1}
!165 = !{!"fixp", i32 32, i32 25}
!166 = !{!167, !168, i1 false, i2 -1}
!167 = !{!"fixp", i32 -32, i32 24}
!168 = !{double 0.000000e+00, double 9.000000e+01}
!169 = !{!165, !168, i1 false, i2 -1}
!170 = !{!160, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 0x40B4A00007DD4413}
!172 = !{!48, !171, i1 false, i2 -1}
!173 = !{!48, !174, i1 false, i2 -1}
!174 = !{double 0.000000e+00, double 0x40DE375C21F6CACD}
!175 = distinct !{!175, !23}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
!178 = !{i32 -1, i32 -1, i32 3, i32 -1}
!179 = !{i32 1, !16, i32 1, !93, i32 1, !50, i32 1, !88}
!180 = !{void (i32, i32, float*, i32)* @scale_2d}
!181 = !{!165, !89, i1 false, i2 1}
!182 = !{!183, !184, i1 false, i2 -1}
!183 = !{!"fixp", i32 -32, i32 19}
!184 = !{double 0.000000e+00, double 3.840000e+03}
!185 = !{!186, !184, i1 false, i2 -1}
!186 = !{!"fixp", i32 32, i32 20}
!187 = distinct !{!187, !23}
!188 = distinct !{!188, !23}
!189 = !{i32 1, !16, i32 1, !78, i32 1, !47, i32 1, !88}
!190 = !{!191, !192, i1 false, i2 -1}
!191 = !{!"fixp", i32 -32, i32 10}
!192 = !{double 0.000000e+00, double 0x41390F5C1FFF79C8}
!193 = !{!194, !192, i1 false, i2 -1}
!194 = !{!"fixp", i32 32, i32 11}
!195 = distinct !{!195, !23}
!196 = distinct !{!196, !23}