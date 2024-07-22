; ModuleID = './build/bin/fixed/symm/16/symm-standard-512-fixed-16.out.ll.4.taffotmp.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %C.u24_8fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.s20_12fixp = alloca [10 x [10 x i32]], align 4, !taffo.info !50
  %B.u11_21fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !53
  %arraydecay.u24_8fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u24_8fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay6.s20_12fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s20_12fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay7.u11_21fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u11_21fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.4_fixp(i32 10, i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u24_8fixp, [10 x i32]* %arraydecay6.s20_12fixp, [16 x i32]* %arraydecay7.u11_21fixp), !taffo.info !56, !taffo.constinfo !57
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 512), !taffo.info !56, !taffo.constinfo !58
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 512), !taffo.info !59, !taffo.constinfo !58
  %arraydecay8.u24_8fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u24_8fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u24_8fixp = bitcast [16 x i32]* %arraydecay8.u24_8fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 10, i32 16, i32* %u24_8fixp, i32 512), !taffo.info !60, !taffo.constinfo !61, !taffo.target !49
  %arraydecay9.s20_12fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s20_12fixp, i32 0, i32 0, !taffo.info !50
  %s20_12fixp = bitcast [10 x i32]* %arraydecay9.s20_12fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 10, i32 10, i32* %s20_12fixp, i32 512), !taffo.info !62, !taffo.constinfo !61
  %arraydecay10.u11_21fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u11_21fixp, i32 0, i32 0, !taffo.info !53
  %u11_21fixp = bitcast [16 x i32]* %arraydecay10.u11_21fixp to i32*, !taffo.info !53
  call void @scale_2d.7_fixp(i32 10, i32 16, i32* %u11_21fixp, i32 512), !taffo.info !63, !taffo.constinfo !61
  call void @timer_start(), !taffo.constinfo !64
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay11.u24_8fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u24_8fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay12.s20_12fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s20_12fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay13.u11_21fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u11_21fixp, i32 0, i32 0, !taffo.info !53
  call void @kernel_symm.3_fixp(i32 10, i32 16, i32 %u2_30fixp, i32 %u2_30fixp1, [16 x i32]* %arraydecay11.u24_8fixp, [10 x i32]* %arraydecay12.s20_12fixp, [16 x i32]* %arraydecay13.u11_21fixp), !taffo.info !56, !taffo.constinfo !57
  call void @timer_stop(), !taffo.constinfo !64
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !67
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx.u24_8fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u24_8fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx17.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u24_8fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u24_8fixp2 = load i32, i32* %arrayidx17.u24_8fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u24_8fixp2 to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 2.560000e+02, !taffo.info !47, !taffo.target !49
  %arrayidx18 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx19, align 4, !taffo.info !60, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !73

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !76

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !77
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !27 !taffo.funinfo !78 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !83
  %add = add nsw i32 %mul, %j.0, !taffo.info !83
  %rem = srem i32 %add, 20, !taffo.info !83, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !81
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !58
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !77
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !86

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !91 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm.3_fixp(i32 noundef %m, i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u24_8fixp, [10 x i32]* noundef %A.s20_12fixp, [16 x i32]* noundef %B.u11_21fixp) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !94 {
entry:
  %0 = uitofp i32 %alpha.u2_30fixp to float, !taffo.info !42
  %1 = fdiv float %0, 0x41D0000000000000, !taffo.info !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc34, %for.inc33 ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !67
  %temp2.0.1flp = phi float [ 0.000000e+00, %for.body3 ], [ %add18.1flp, %for.inc ], !taffo.info !95
  %cmp5 = icmp slt i32 %k.0, %i.0, !taffo.info !83
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %i.0, !taffo.info !53
  %arrayidx7.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u11_21fixp, i32 0, i32 %j.0, !taffo.info !53
  %u11_21fixp = load i32, i32* %arrayidx7.u11_21fixp, align 4, !taffo.info !53
  %2 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %3 = lshr i32 %u11_21fixp, 1, !taffo.info !53
  %4 = ashr i32 %2, 9, !taffo.info !42
  %5 = call i32 @llvm.smul.fix.i32(i32 %4, i32 %3, i32 20), !taffo.info !98
  %mul.u11_21fixp = shl i32 %5, 1, !taffo.info !101
  %6 = uitofp i32 %mul.u11_21fixp to float, !taffo.info !101
  %7 = fdiv float %6, 0x4140000000000000, !taffo.info !101
  %arrayidx8.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s20_12fixp, i32 %i.0, !taffo.info !50
  %arrayidx9.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8.s20_12fixp, i32 0, i32 %k.0, !taffo.info !50
  %s20_12fixp = load i32, i32* %arrayidx9.s20_12fixp, align 4, !taffo.info !50
  %8 = sitofp i32 %s20_12fixp to float, !taffo.info !50
  %9 = fdiv float %8, 4.096000e+03, !taffo.info !50
  %mul10.1flp = fmul float %7, %9, !taffo.info !102
  %arrayidx11.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u24_8fixp, i32 %k.0, !taffo.info !47
  %arrayidx12.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx11.u24_8fixp, i32 0, i32 %j.0, !taffo.info !47
  %u24_8fixp = load i32, i32* %arrayidx12.u24_8fixp, align 4, !taffo.info !47
  %10 = uitofp i32 %u24_8fixp to float, !taffo.info !47
  %11 = fdiv float %10, 2.560000e+02, !taffo.info !47
  %add.1flp = fadd float %11, %mul10.1flp, !taffo.info !105
  %12 = fmul float 2.560000e+02, %add.1flp, !taffo.info !105
  %13 = fptoui float %12 to i32, !taffo.info !105
  store i32 %13, i32* %arrayidx12.u24_8fixp, align 4, !taffo.info !60
  %arrayidx13.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %k.0, !taffo.info !53
  %arrayidx14.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u11_21fixp, i32 0, i32 %j.0, !taffo.info !53
  %u11_21fixp4 = load i32, i32* %arrayidx14.u11_21fixp, align 4, !taffo.info !53
  %14 = uitofp i32 %u11_21fixp4 to float, !taffo.info !53
  %15 = fdiv float %14, 0x4140000000000000, !taffo.info !53
  %arrayidx15.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s20_12fixp, i32 %i.0, !taffo.info !50
  %arrayidx16.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx15.s20_12fixp, i32 0, i32 %k.0, !taffo.info !50
  %s20_12fixp2 = load i32, i32* %arrayidx16.s20_12fixp, align 4, !taffo.info !50
  %16 = sitofp i32 %s20_12fixp2 to float, !taffo.info !50
  %17 = fdiv float %16, 4.096000e+03, !taffo.info !50
  %mul17.1flp = fmul float %15, %17, !taffo.info !107
  %add18.1flp = fadd float %temp2.0.1flp, %mul17.1flp, !taffo.info !107
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !108

for.end:                                          ; preds = %for.cond4
  %arrayidx19.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u24_8fixp, i32 %i.0, !taffo.info !47
  %arrayidx20.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx19.u24_8fixp, i32 0, i32 %j.0, !taffo.info !47
  %u24_8fixp1 = load i32, i32* %arrayidx20.u24_8fixp, align 4, !taffo.info !47
  %18 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %19 = lshr i32 %u24_8fixp1, 1, !taffo.info !47
  %20 = ashr i32 %18, 22, !taffo.info !45
  %21 = call i32 @llvm.smul.fix.i32(i32 %20, i32 %19, i32 7), !taffo.info !109
  %mul21.u24_8fixp = shl i32 %21, 1, !taffo.info !112
  %22 = uitofp i32 %mul21.u24_8fixp to float, !taffo.info !112
  %23 = fdiv float %22, 2.560000e+02, !taffo.info !112
  %arrayidx22.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %i.0, !taffo.info !53
  %arrayidx23.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u11_21fixp, i32 0, i32 %j.0, !taffo.info !53
  %u11_21fixp5 = load i32, i32* %arrayidx23.u11_21fixp, align 4, !taffo.info !53
  %24 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %25 = lshr i32 %u11_21fixp5, 1, !taffo.info !53
  %26 = ashr i32 %24, 9, !taffo.info !42
  %27 = call i32 @llvm.smul.fix.i32(i32 %26, i32 %25, i32 20), !taffo.info !98
  %mul24.u11_21fixp = shl i32 %27, 1, !taffo.info !101
  %28 = uitofp i32 %mul24.u11_21fixp to float, !taffo.info !101
  %29 = fdiv float %28, 0x4140000000000000, !taffo.info !101
  %arrayidx25.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s20_12fixp, i32 %i.0, !taffo.info !50
  %arrayidx26.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.s20_12fixp, i32 0, i32 %i.0, !taffo.info !50
  %s20_12fixp3 = load i32, i32* %arrayidx26.s20_12fixp, align 4, !taffo.info !50
  %30 = sitofp i32 %s20_12fixp3 to float, !taffo.info !50
  %31 = fdiv float %30, 4.096000e+03, !taffo.info !50
  %mul27.1flp = fmul float %29, %31, !taffo.info !102
  %add28.1flp = fadd float %23, %mul27.1flp, !taffo.info !113
  %mul29.1flp = fmul float %1, %temp2.0.1flp, !taffo.info !115
  %add30.1flp = fadd float %add28.1flp, %mul29.1flp, !taffo.info !117
  %arrayidx31.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u24_8fixp, i32 %i.0, !taffo.info !47
  %arrayidx32.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx31.u24_8fixp, i32 0, i32 %j.0, !taffo.info !47
  %32 = fmul float 2.560000e+02, %add30.1flp, !taffo.info !117
  %33 = fptoui float %32 to i32, !taffo.info !117
  store i32 %33, i32* %arrayidx32.u24_8fixp, align 4, !taffo.info !56
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %inc34 = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !120

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !121

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %m, i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u24_8fixp, [10 x i32]* noundef %A.s20_12fixp, [16 x i32]* noundef %B.u11_21fixp) #0 !taffo.initweight !122 !taffo.funinfo !93 !taffo.sourceFunction !123 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !56, !taffo.constinfo !124
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !59, !taffo.constinfo !126
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !129, !taffo.initweight !130
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp, label %for.body, label %for.end17, !taffo.info !133, !taffo.initweight !134

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !135, !taffo.initweight !130
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !137, !taffo.initweight !134

for.body5:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0, !taffo.info !139, !taffo.initweight !132
  %rem = srem i32 %add, 100, !taffo.info !139, !taffo.initweight !134, !taffo.constinfo !21
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !141, !taffo.constinfo !21
  %conv6.u4_28fixp = shl i32 %m, 28, !taffo.info !143
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !141, !taffo.constinfo !21
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !143
  %2 = ashr i32 %1, 1, !taffo.info !143
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %2, i32 26), !taffo.info !145
  %div.u4_28fixp = shl i32 %3, 2, !taffo.info !148
  %arrayidx.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u24_8fixp, i32 %i.0, !taffo.info !149
  %arrayidx7.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u24_8fixp, i32 0, i32 %j.0, !taffo.info !149
  %4 = lshr i32 %div.u4_28fixp, 20, !taffo.info !148
  store i32 %4, i32* %arrayidx7.u24_8fixp, align 4, !taffo.info !150
  %add8 = add nsw i32 %n, %i.0, !taffo.info !151, !taffo.initweight !132
  %sub = sub nsw i32 %add8, %j.0, !taffo.info !139, !taffo.initweight !132
  %rem9 = srem i32 %sub, 100, !taffo.info !139, !taffo.initweight !134, !taffo.constinfo !21
  %conv10.u5_27fixp = shl i32 %rem9, 27, !taffo.info !141, !taffo.constinfo !21
  %conv11.u4_28fixp = shl i32 %m, 28, !taffo.info !143
  %5 = lshr i32 %conv10.u5_27fixp, 1, !taffo.info !141, !taffo.constinfo !21
  %6 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !143
  %7 = ashr i32 %6, 1, !taffo.info !143
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %7, i32 26), !taffo.info !145
  %div12.u4_28fixp = shl i32 %8, 2, !taffo.info !148
  %arrayidx13.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %i.0, !taffo.info !153
  %arrayidx14.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u11_21fixp, i32 0, i32 %j.0, !taffo.info !153
  %9 = lshr i32 %div12.u4_28fixp, 7, !taffo.info !148
  store i32 %9, i32* %arrayidx14.u11_21fixp, align 4, !taffo.info !150
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !154, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !156

for.end:                                          ; preds = %for.cond3
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !157, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !158

for.end17:                                        ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc46, %for.end17
  %i.1 = phi i32 [ 0, %for.end17 ], [ %inc47, %for.inc46 ], !taffo.info !129, !taffo.initweight !130
  %cmp19 = icmp slt i32 %i.1, %m, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp19, label %for.body21, label %for.end48, !taffo.info !133, !taffo.initweight !134

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.info !135, !taffo.initweight !130
  %cmp23 = icmp sle i32 %j.1, %i.1, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp23, label %for.body25, label %for.end35, !taffo.info !133, !taffo.initweight !134

for.body25:                                       ; preds = %for.cond22
  %add26 = add nsw i32 %i.1, %j.1, !taffo.info !139, !taffo.initweight !132
  %rem27 = srem i32 %add26, 100, !taffo.info !139, !taffo.initweight !134, !taffo.constinfo !21
  %conv28.u5_27fixp = shl i32 %rem27, 27, !taffo.info !141, !taffo.constinfo !21
  %conv29.u4_28fixp = shl i32 %m, 28, !taffo.info !143
  %10 = lshr i32 %conv28.u5_27fixp, 1, !taffo.info !141, !taffo.constinfo !21
  %11 = lshr i32 %conv29.u4_28fixp, 1, !taffo.info !143
  %12 = ashr i32 %11, 1, !taffo.info !143
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %10, i32 %12, i32 26), !taffo.info !145
  %div30.u4_28fixp = shl i32 %13, 2, !taffo.info !148
  %arrayidx31.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s20_12fixp, i32 %i.1, !taffo.info !159
  %arrayidx32.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx31.s20_12fixp, i32 0, i32 %j.1, !taffo.info !159
  %14 = lshr i32 %div30.u4_28fixp, 16, !taffo.info !148
  store i32 %14, i32* %arrayidx32.s20_12fixp, align 4, !taffo.info !150
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %j.1, 1, !taffo.info !154, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !160

for.end35:                                        ; preds = %for.cond22
  %add36 = add nsw i32 %i.1, 1, !taffo.info !157, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %j.2 = phi i32 [ %add36, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !135, !taffo.initweight !130
  %cmp38 = icmp slt i32 %j.2, %m, !taffo.info !131, !taffo.initweight !132
  br i1 %cmp38, label %for.body40, label %for.end45, !taffo.info !137, !taffo.initweight !134

for.body40:                                       ; preds = %for.cond37
  %arrayidx41.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s20_12fixp, i32 %i.1, !taffo.info !159
  %arrayidx42.s20_12fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx41.s20_12fixp, i32 0, i32 %j.2, !taffo.info !159
  store i32 -4091904, i32* %arrayidx42.s20_12fixp, align 4, !taffo.info !150, !taffo.constinfo !161
  br label %for.inc43

for.inc43:                                        ; preds = %for.body40
  %inc44 = add nsw i32 %j.2, 1, !taffo.info !154, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !164

for.end45:                                        ; preds = %for.cond37
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %i.1, 1, !taffo.info !157, !taffo.initweight !132, !taffo.constinfo !21
  br label %for.cond18, !llvm.loop !165

for.end48:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.s20_12fixp, i32 noundef %factor) #0 !taffo.initweight !166 !taffo.funinfo !167 !taffo.sourceFunction !168 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !83
  %arrayidx.s20_12fixp = getelementptr inbounds i32, i32* %val.s20_12fixp, i32 %0, !taffo.info !50
  %arrayidx4.s20_12fixp = getelementptr inbounds i32, i32* %arrayidx.s20_12fixp, i32 %j.0, !taffo.info !50
  %s20_12fixp = load i32, i32* %arrayidx4.s20_12fixp, align 4, !taffo.info !50
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !169
  %1 = lshr i32 %conv.u10_22fixp, 1, !taffo.info !169
  %2 = ashr i32 %s20_12fixp, 9, !taffo.info !50
  %3 = ashr i32 %1, 18, !taffo.info !169
  %mul.s29_3fixp = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 3), !taffo.info !171
  %4 = mul nsw i32 %i.0, %m, !taffo.info !83
  %arrayidx5.s20_12fixp = getelementptr inbounds i32, i32* %val.s20_12fixp, i32 %4, !taffo.info !50
  %arrayidx6.s20_12fixp = getelementptr inbounds i32, i32* %arrayidx5.s20_12fixp, i32 %j.0, !taffo.info !50
  %5 = shl i32 %mul.s29_3fixp, 9, !taffo.info !171
  store i32 %5, i32* %arrayidx6.s20_12fixp, align 4, !taffo.info !62
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !174

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !175

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !166 !taffo.funinfo !176 !taffo.sourceFunction !168 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !83
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %0, !taffo.info !53
  %arrayidx4.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx.u11_21fixp, i32 %j.0, !taffo.info !53
  %u11_21fixp = load i32, i32* %arrayidx4.u11_21fixp, align 4, !taffo.info !53
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !169
  %1 = lshr i32 %u11_21fixp, 1, !taffo.info !53
  %2 = lshr i32 %conv.u10_22fixp, 1, !taffo.info !169
  %3 = ashr i32 %1, 9, !taffo.info !53
  %4 = ashr i32 %2, 10, !taffo.info !169
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 11), !taffo.info !177
  %mul.u20_12fixp = shl i32 %5, 1, !taffo.info !180
  %6 = mul nsw i32 %i.0, %m, !taffo.info !83
  %arrayidx5.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %6, !taffo.info !53
  %arrayidx6.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx5.u11_21fixp, i32 %j.0, !taffo.info !53
  %7 = shl i32 %mul.u20_12fixp, 9, !taffo.info !180
  store i32 %7, i32* %arrayidx6.u11_21fixp, align 4, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !182

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !183

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u24_8fixp, i32 noundef %factor) #0 !taffo.initweight !166 !taffo.funinfo !184 !taffo.sourceFunction !168 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !83
  %arrayidx.u24_8fixp = getelementptr inbounds i32, i32* %val.u24_8fixp, i32 %0, !taffo.info !47
  %arrayidx4.u24_8fixp = getelementptr inbounds i32, i32* %arrayidx.u24_8fixp, i32 %j.0, !taffo.info !47
  %u24_8fixp = load i32, i32* %arrayidx4.u24_8fixp, align 4, !taffo.info !47
  %1 = uitofp i32 %u24_8fixp to float, !taffo.info !47
  %2 = fdiv float %1, 2.560000e+02, !taffo.info !47
  %conv.u10_22fixp = shl i32 %factor, 22, !taffo.info !169
  %3 = uitofp i32 %conv.u10_22fixp to float, !taffo.info !169
  %4 = fdiv float %3, 0x4150000000000000, !taffo.info !169
  %mul.1flp = fmul float %2, %4, !taffo.info !185
  %5 = mul nsw i32 %i.0, %m, !taffo.info !83
  %arrayidx5.u24_8fixp = getelementptr inbounds i32, i32* %val.u24_8fixp, i32 %5, !taffo.info !47
  %arrayidx6.u24_8fixp = getelementptr inbounds i32, i32* %arrayidx5.u24_8fixp, i32 %j.0, !taffo.info !47
  %6 = fmul float 2.560000e+02, %mul.1flp, !taffo.info !185
  %7 = fptoui float %6 to i32, !taffo.info !185
  store i32 %7, i32* %arrayidx6.u24_8fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !188

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !189

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
!1 = !{double 0.000000e+00, double 0x4165604520000000}
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
!48 = !{!"fixp", i32 32, i32 8}
!49 = !{!"C"}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 -32, i32 12}
!52 = !{double -5.114880e+05, double 0x408CCCCCC0379314}
!53 = !{!54, !55, i1 false, i2 -1}
!54 = !{!"fixp", i32 32, i32 21}
!55 = !{double 0x40499999A1FD156A, double 1.280000e+03}
!56 = !{i1 false, !44, i1 false, i2 -1}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false, i1 false, i1 false}
!59 = !{i1 false, !46, i1 false, i2 -1}
!60 = !{i1 false, !1, i1 false, i2 -1}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{i1 false, !52, i1 false, i2 -1}
!63 = !{i1 false, !55, i1 false, i2 -1}
!64 = !{i1 false}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 1.100000e+01}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.000000e+00}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 1.870000e+02}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 1.870000e+02}
!73 = distinct !{!73, !23}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.100000e+01}
!76 = distinct !{!76, !23}
!77 = !{i1 false, i1 false, i1 false, i1 false}
!78 = !{i32 1, !16, i32 1, !79, i32 1, !0}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.600000e+01, double 1.600000e+01}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 1.000000e+00}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0.000000e+00, double 0.000000e+00}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = !{i32 1, i32 -1}
!88 = !{i32 1, !42, i32 1, !89}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 5.120000e+02, double 5.120000e+02}
!91 = !{void (float*, i32)* @scale_scalar}
!92 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!93 = !{i32 1, !16, i32 1, !79, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!94 = distinct !{null}
!95 = !{!96, !97, i1 false, i2 1}
!96 = !{!"float", i32 1, double 0x41C3830000000000}
!97 = !{double 0xC1C3830000000000, double 0x4131FFFFF822BBEC}
!98 = !{!99, !100, i1 false, i2 -1}
!99 = !{!"fixp", i32 -32, i32 20}
!100 = !{double 0x40533333397DD010, double 1.920000e+03}
!101 = !{!54, !100, i1 false, i2 -1}
!102 = !{!103, !104, i1 false, i2 -1}
!103 = !{!"float", i32 1, double 0x41CD448000000000}
!104 = !{double 0xC1CD448000000000, double 0x413AFFFFF43419E3}
!105 = !{!103, !106, i1 false, i2 -1}
!106 = !{double 0xC1CD448000000000, double 0x4168C0451E86833C}
!107 = !{!96, !97, i1 false, i2 -1}
!108 = distinct !{!108, !23}
!109 = !{!110, !111, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 7}
!111 = !{double 0.000000e+00, double 0x4169A6B959999999}
!112 = !{!48, !111, i1 false, i2 -1}
!113 = !{!103, !114, i1 false, i2 -1}
!114 = !{double 0xC1CD448000000000, double 0x416D06B958201CD5}
!115 = !{!103, !116, i1 false, i2 -1}
!116 = !{double 0xC1CD448000000000, double 0x413AFFFFF43419E2}
!117 = !{!118, !119, i1 false, i2 -1}
!118 = !{!"float", i32 1, double 0x41DD448000000000}
!119 = !{double 0xC1DD448000000000, double 0x4170335CAB535009}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!123 = distinct !{null}
!124 = !{!125, i1 false}
!125 = !{i1 false, !44, i1 false, i2 0}
!126 = !{!127, i1 false}
!127 = !{i1 false, !128, i1 false, i2 0}
!128 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!129 = !{i1 false, !66, i1 false, i2 1}
!130 = !{i32 0}
!131 = !{i1 false, !68, i1 false, i2 1}
!132 = !{i32 2}
!133 = !{i1 false, !3, i1 false, i2 1}
!134 = !{i32 3}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 1.700000e+01}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 0.000000e+00, double 1.600000e+01}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 2.600000e+01}
!141 = !{!142, !140, i1 false, i2 1}
!142 = !{!"fixp", i32 32, i32 27}
!143 = !{!144, !17, i1 false, i2 1}
!144 = !{!"fixp", i32 32, i32 28}
!145 = !{!146, !147, i1 false, i2 1}
!146 = !{!"fixp", i32 -32, i32 26}
!147 = !{double 0.000000e+00, double 2.600000e+00}
!148 = !{!144, !147, i1 false, i2 1}
!149 = !{!48, !1, i1 false, i2 1}
!150 = !{i1 false, i1 false, i1 false, i2 1}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double 1.600000e+01, double 2.600000e+01}
!153 = !{!54, !55, i1 false, i2 1}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 1.000000e+00, double 1.700000e+01}
!156 = distinct !{!156, !23}
!157 = !{i1 false, !75, i1 false, i2 1}
!158 = distinct !{!158, !23}
!159 = !{!51, !52, i1 false, i2 1}
!160 = distinct !{!160, !23}
!161 = !{!162, i1 false}
!162 = !{i1 false, !163, i1 false, i2 0}
!163 = !{double -9.990000e+02, double -9.990000e+02}
!164 = distinct !{!164, !23}
!165 = distinct !{!165, !23}
!166 = !{i32 -1, i32 -1, i32 3, i32 -1}
!167 = !{i32 1, !16, i32 1, !16, i32 1, !50, i32 1, !89}
!168 = !{void (i32, i32, float*, i32)* @scale_2d}
!169 = !{!170, !90, i1 false, i2 1}
!170 = !{!"fixp", i32 32, i32 22}
!171 = !{!172, !173, i1 false, i2 -1}
!172 = !{!"fixp", i32 -32, i32 3}
!173 = !{double 0xC1AF380000000000, double 0x411CCCCCC0379314}
!174 = distinct !{!174, !23}
!175 = distinct !{!175, !23}
!176 = !{i32 1, !16, i32 1, !79, i32 1, !53, i32 1, !89}
!177 = !{!178, !179, i1 false, i2 -1}
!178 = !{!"fixp", i32 -32, i32 11}
!179 = !{double 0x40D99999A1FD156A, double 6.553600e+05}
!180 = !{!181, !179, i1 false, i2 -1}
!181 = !{!"fixp", i32 32, i32 12}
!182 = distinct !{!182, !23}
!183 = distinct !{!183, !23}
!184 = !{i32 1, !16, i32 1, !79, i32 1, !47, i32 1, !89}
!185 = !{!186, !187, i1 false, i2 -1}
!186 = !{!"float", i32 1, double 0x41F5604520000000}
!187 = !{double 0.000000e+00, double 0x41F5604520000000}
!188 = distinct !{!188, !23}
!189 = distinct !{!189, !23}
