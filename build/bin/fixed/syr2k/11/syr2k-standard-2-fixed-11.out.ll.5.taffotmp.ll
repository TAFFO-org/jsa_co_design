; ModuleID = './build/bin/fixed/syr2k/11/syr2k-standard-2-fixed-11.out.ll.4.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
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
  %C.u6_26fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.u2_30fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !50
  %B.u2_30fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !52
  %arraydecay.u6_26fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u6_26fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay6.u2_30fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay7.u2_30fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !52
  call void @init_array.4_fixp(i32 16, i32 10, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u6_26fixp, [10 x i32]* %arraydecay6.u2_30fixp, [10 x i32]* %arraydecay7.u2_30fixp), !taffo.info !54, !taffo.constinfo !55
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 2), !taffo.info !54, !taffo.constinfo !56
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 2), !taffo.info !57, !taffo.constinfo !56
  %arraydecay8.u6_26fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u6_26fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u6_26fixp = bitcast [16 x i32]* %arraydecay8.u6_26fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 16, i32 16, i32* %u6_26fixp, i32 2), !taffo.info !58, !taffo.constinfo !59, !taffo.target !49
  %arraydecay9.u2_30fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %u2_30fixp2 = bitcast [10 x i32]* %arraydecay9.u2_30fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u2_30fixp2, i32 2), !taffo.info !60, !taffo.constinfo !59
  %arraydecay10.u2_30fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %u2_30fixp3 = bitcast [10 x i32]* %arraydecay10.u2_30fixp to i32*, !taffo.info !52
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u2_30fixp3, i32 2), !taffo.info !61, !taffo.constinfo !59
  call void @timer_start(), !taffo.constinfo !62
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay11.u6_26fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u6_26fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay12.u2_30fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay13.u2_30fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !52
  call void @kernel_syr2k.3_fixp(i32 16, i32 10, i32 %u2_30fixp, i32 %u2_30fixp1, [16 x i32]* %arraydecay11.u6_26fixp, [10 x i32]* %arraydecay12.u2_30fixp, [10 x i32]* %arraydecay13.u2_30fixp), !taffo.info !54, !taffo.constinfo !55
  call void @timer_stop(), !taffo.constinfo !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !65
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !65
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx.u6_26fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u6_26fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx17.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u6_26fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u6_26fixp4 = load i32, i32* %arrayidx17.u6_26fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u6_26fixp4 to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 0x4190000000000000, !taffo.info !47, !taffo.target !49
  %arrayidx18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx19, align 4, !taffo.info !58, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !71

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !74

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !56
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !75 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !65
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !78
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !80
  %add = add nsw i32 %mul, %j.0, !taffo.info !80
  %rem = srem i32 %add, 20, !taffo.info !80, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !78
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !56
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !82
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !83

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !84

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.sourceFunction !87 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.3_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u6_26fixp, [10 x i32]* noundef %A.u2_30fixp, [10 x i32]* noundef %B.u2_30fixp) #0 !taffo.initweight !88 !taffo.funinfo !89 !taffo.sourceFunction !90 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !65
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !65
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u6_26fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u6_26fixp, i32 0, i32 %j.0, !taffo.info !47
  %u6_26fixp = load i32, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !47
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !47
  %1 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %2 = ashr i32 %1, 4, !taffo.info !45
  %3 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %2, i32 25), !taffo.info !91
  %mul.u6_26fixp = shl i32 %3, 1, !taffo.info !94
  store i32 %mul.u6_26fixp, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !95

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !65
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !78
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !65
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !65
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u2_30fixp, i32 %j.1, !taffo.info !50
  %arrayidx12.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u2_30fixp, i32 0, i32 %k.0, !taffo.info !50
  %u2_30fixp = load i32, i32* %arrayidx12.u2_30fixp, align 4, !taffo.info !50
  %4 = lshr i32 %u2_30fixp, 1, !taffo.info !50
  %5 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %6 = ashr i32 %4, 1, !taffo.info !50
  %7 = ashr i32 %5, 1, !taffo.info !42
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 28), !taffo.info !96
  %mul13.u3_29fixp = shl i32 %8, 1, !taffo.info !99
  %arrayidx14.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !52
  %arrayidx15.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u2_30fixp, i32 0, i32 %k.0, !taffo.info !52
  %u2_30fixp3 = load i32, i32* %arrayidx15.u2_30fixp, align 4, !taffo.info !101
  %9 = lshr i32 %mul13.u3_29fixp, 1, !taffo.info !99
  %10 = lshr i32 %u2_30fixp3, 1, !taffo.info !101
  %11 = ashr i32 %9, 1, !taffo.info !99
  %12 = ashr i32 %10, 2, !taffo.info !101
  %13 = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 27), !taffo.info !102
  %mul16.u4_28fixp = shl i32 %13, 1, !taffo.info !105
  %arrayidx17.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u2_30fixp, i32 %j.1, !taffo.info !52
  %arrayidx18.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx17.u2_30fixp, i32 0, i32 %k.0, !taffo.info !52
  %u2_30fixp4 = load i32, i32* %arrayidx18.u2_30fixp, align 4, !taffo.info !52
  %14 = lshr i32 %u2_30fixp4, 1, !taffo.info !52
  %15 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %16 = ashr i32 %14, 1, !taffo.info !52
  %17 = ashr i32 %15, 1, !taffo.info !42
  %18 = call i32 @llvm.smul.fix.i32(i32 %16, i32 %17, i32 28), !taffo.info !107
  %mul19.u3_29fixp = shl i32 %18, 1, !taffo.info !109
  %arrayidx20.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !50
  %arrayidx21.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx20.u2_30fixp, i32 0, i32 %k.0, !taffo.info !50
  %u2_30fixp2 = load i32, i32* %arrayidx21.u2_30fixp, align 4, !taffo.info !110
  %19 = lshr i32 %mul19.u3_29fixp, 1, !taffo.info !109
  %20 = lshr i32 %u2_30fixp2, 1, !taffo.info !110
  %21 = ashr i32 %19, 1, !taffo.info !109
  %22 = ashr i32 %20, 2, !taffo.info !110
  %23 = call i32 @llvm.smul.fix.i32(i32 %21, i32 %22, i32 27), !taffo.info !102
  %mul22.u4_28fixp = shl i32 %23, 1, !taffo.info !105
  %24 = lshr i32 %mul16.u4_28fixp, 2, !taffo.info !105
  %25 = lshr i32 %mul22.u4_28fixp, 2, !taffo.info !105
  %add.u6_26fixp = add i32 %24, %25, !taffo.info !111
  %arrayidx23.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u6_26fixp, i32 %i.0, !taffo.info !47
  %arrayidx24.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx23.u6_26fixp, i32 0, i32 %j.1, !taffo.info !47
  %u6_26fixp1 = load i32, i32* %arrayidx24.u6_26fixp, align 4, !taffo.info !47
  %add25.u6_26fixp = add i32 %u6_26fixp1, %add.u6_26fixp, !taffo.info !113
  store i32 %add25.u6_26fixp, i32* %arrayidx24.u6_26fixp, align 4, !taffo.info !58
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !115

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !116

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !117

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u6_26fixp, [10 x i32]* noundef %A.u2_30fixp, [10 x i32]* noundef %B.u2_30fixp) #0 !taffo.initweight !118 !taffo.funinfo !89 !taffo.sourceFunction !119 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !54, !taffo.constinfo !120
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !57, !taffo.constinfo !122
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !125, !taffo.initweight !126
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !127, !taffo.initweight !128
  br i1 %cmp, label %for.body, label %for.end18, !taffo.info !129, !taffo.initweight !131

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !132, !taffo.initweight !126
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !127, !taffo.initweight !128
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !134, !taffo.initweight !131

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !135, !taffo.initweight !128
  %add = add nsw i32 %mul, 1, !taffo.info !137, !taffo.initweight !131, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !139, !taffo.initweight !141
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !142
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !143
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !142
  %1 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !143
  %2 = ashr i32 %0, 1, !taffo.info !142
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !145
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !148
  %arrayidx.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !150
  %arrayidx7.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %j.0, !taffo.info !150
  %4 = lshr i32 %div.u1_31fixp, 1, !taffo.info !148
  store i32 %4, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !151
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.info !135, !taffo.initweight !128
  %add9 = add nsw i32 %mul8, 2, !taffo.info !152, !taffo.initweight !131, !taffo.constinfo !21
  %rem10 = srem i32 %add9, %m, !taffo.info !154, !taffo.initweight !141
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !156
  %conv12.u4_28fixp = shl i32 %m, 28, !taffo.info !157
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !156
  %6 = lshr i32 %conv12.u4_28fixp, 1, !taffo.info !157
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !158
  %div13.u1_31fixp = shl i32 %7, 4, !taffo.info !160
  %arrayidx14.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !161
  %arrayidx15.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u2_30fixp, i32 0, i32 %j.0, !taffo.info !161
  %8 = lshr i32 %div13.u1_31fixp, 1, !taffo.info !160
  store i32 %8, i32* %arrayidx15.u2_30fixp, align 4, !taffo.info !151
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !162, !taffo.initweight !128, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !164

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !165, !taffo.initweight !128, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !166

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.info !125, !taffo.initweight !126
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.info !127, !taffo.initweight !128
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.info !129, !taffo.initweight !131

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.info !132, !taffo.initweight !126
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.info !167, !taffo.initweight !128
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.info !134, !taffo.initweight !131

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.info !135, !taffo.initweight !128
  %add28 = add nsw i32 %mul27, 3, !taffo.info !168, !taffo.initweight !131, !taffo.constinfo !21
  %rem29 = srem i32 %add28, %n, !taffo.info !139, !taffo.initweight !141
  %conv30.u4_28fixp = shl i32 %rem29, 28, !taffo.info !142
  %conv31.u4_28fixp = shl i32 %m, 28, !taffo.info !157
  %9 = lshr i32 %conv30.u4_28fixp, 1, !taffo.info !142
  %10 = lshr i32 %conv31.u4_28fixp, 1, !taffo.info !157
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !170
  %div32.u4_28fixp = shl i32 %11, 1, !taffo.info !172
  %arrayidx33.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u6_26fixp, i32 %i.1, !taffo.info !173
  %arrayidx34.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx33.u6_26fixp, i32 0, i32 %j.1, !taffo.info !173
  %12 = lshr i32 %div32.u4_28fixp, 2, !taffo.info !172
  store i32 %12, i32* %arrayidx34.u6_26fixp, align 4, !taffo.info !151
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.info !162, !taffo.initweight !128, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !174

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.info !165, !taffo.initweight !128, !taffo.constinfo !21
  br label %for.cond19, !llvm.loop !175

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !176 !taffo.funinfo !177 !taffo.sourceFunction !178 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !65
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !78
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !80
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %0, !taffo.info !50
  %arrayidx4.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx.u2_30fixp, i32 %j.0, !taffo.info !50
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !110
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !179
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !110
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !179
  %3 = ashr i32 %1, 1, !taffo.info !110
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !180
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !182
  %5 = mul nsw i32 %i.0, %m, !taffo.info !80
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !50
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !50
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !182
  store i32 %6, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !183

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !184

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !176 !taffo.funinfo !185 !taffo.sourceFunction !178 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !65
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !78
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !80
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %0, !taffo.info !47
  %arrayidx4.u6_26fixp = getelementptr inbounds i32, i32* %arrayidx.u6_26fixp, i32 %j.0, !taffo.info !47
  %u6_26fixp = load i32, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !186
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !188
  %1 = lshr i32 %u6_26fixp, 1, !taffo.info !186
  %2 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !188
  %3 = ashr i32 %1, 1, !taffo.info !186
  %4 = ashr i32 %2, 5, !taffo.info !188
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 24), !taffo.info !189
  %mul.u7_25fixp = shl i32 %5, 1, !taffo.info !192
  %6 = mul nsw i32 %i.0, %m, !taffo.info !80
  %arrayidx5.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %6, !taffo.info !47
  %arrayidx6.u6_26fixp = getelementptr inbounds i32, i32* %arrayidx5.u6_26fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u7_25fixp, 1, !taffo.info !192
  store i32 %7, i32* %arrayidx6.u6_26fixp, align 4, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !193

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !194

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
!1 = !{double 0.000000e+00, double 0x4040728F42FE8251}
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
!48 = !{!"fixp", i32 32, i32 26}
!49 = !{!"C"}
!50 = !{!43, !51, i1 false, i2 -1}
!51 = !{double 0.000000e+00, double 1.875000e+00}
!52 = !{!43, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 1.800000e+00}
!54 = !{i1 false, !44, i1 false, i2 -1}
!55 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false, i1 false, i1 false}
!57 = !{i1 false, !46, i1 false, i2 -1}
!58 = !{i1 false, !1, i1 false, i2 -1}
!59 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!60 = !{i1 false, !51, i1 false, i2 -1}
!61 = !{i1 false, !53, i1 false, i2 -1}
!62 = !{i1 false}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 0.000000e+00, double 1.700000e+01}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 1.000000e+00}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 2.890000e+02}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.890000e+02}
!71 = distinct !{!71, !23}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 1.700000e+01}
!74 = distinct !{!74, !23}
!75 = !{i32 1, !76, i32 1, !0}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.600000e+01, double 1.600000e+01}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 1.000000e+00}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 0.000000e+00}
!82 = !{i1 false, i1 false, i1 false, i1 false}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = !{i32 1, i32 -1}
!86 = !{i32 1, !42, i32 1, !19}
!87 = !{void (float*, i32)* @scale_scalar}
!88 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!89 = !{i32 1, !76, i32 1, !16, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !52}
!90 = distinct !{null}
!91 = !{!92, !93, i1 false, i2 -1}
!92 = !{!"fixp", i32 -32, i32 25}
!93 = !{double 0.000000e+00, double 0x4043BCABE9FE35FB}
!94 = !{!48, !93, i1 false, i2 -1}
!95 = distinct !{!95, !23}
!96 = !{!97, !98, i1 false, i2 -1}
!97 = !{!"fixp", i32 -32, i32 28}
!98 = !{double 0.000000e+00, double 2.812500e+00}
!99 = !{!100, !98, i1 false, i2 -1}
!100 = !{!"fixp", i32 32, i32 29}
!101 = !{!100, !53, i1 false, i2 -1}
!102 = !{!103, !104, i1 false, i2 -1}
!103 = !{!"fixp", i32 -32, i32 27}
!104 = !{double 0.000000e+00, double 5.062500e+00}
!105 = !{!106, !104, i1 false, i2 -1}
!106 = !{!"fixp", i32 32, i32 28}
!107 = !{!97, !108, i1 false, i2 -1}
!108 = !{double 0.000000e+00, double 2.700000e+00}
!109 = !{!100, !108, i1 false, i2 -1}
!110 = !{!100, !51, i1 false, i2 -1}
!111 = !{!48, !112, i1 false, i2 -1}
!112 = !{double 0.000000e+00, double 1.012500e+01}
!113 = !{!48, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 0x4045828F42FE8251}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!119 = distinct !{null}
!120 = !{!121, i1 false}
!121 = !{i1 false, !44, i1 false, i2 0}
!122 = !{!123, i1 false}
!123 = !{i1 false, !124, i1 false, i2 0}
!124 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!125 = !{i1 false, !64, i1 false, i2 1}
!126 = !{i32 0}
!127 = !{i1 false, !66, i1 false, i2 1}
!128 = !{i32 2}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 1.600000e+01}
!131 = !{i32 3}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 1.100000e+01}
!134 = !{i1 false, !3, i1 false, i2 1}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 1.600000e+02}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 1.000000e+00, double 1.610000e+02}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 1.500000e+01}
!141 = !{i32 4}
!142 = !{!106, !140, i1 false, i2 1}
!143 = !{!144, !77, i1 false, i2 1}
!144 = !{!"fixp", i32 32, i32 27}
!145 = !{!146, !147, i1 false, i2 1}
!146 = !{!"fixp", i32 -32, i32 26}
!147 = !{double 0.000000e+00, double 9.375000e-01}
!148 = !{!149, !147, i1 false, i2 1}
!149 = !{!"fixp", i32 32, i32 31}
!150 = !{!43, !51, i1 false, i2 1}
!151 = !{i1 false, i1 false, i1 false, i2 1}
!152 = !{i1 false, !153, i1 false, i2 1}
!153 = !{double 2.000000e+00, double 1.620000e+02}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 9.000000e+00}
!156 = !{!106, !155, i1 false, i2 1}
!157 = !{!106, !17, i1 false, i2 1}
!158 = !{!103, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 9.000000e-01}
!160 = !{!149, !159, i1 false, i2 1}
!161 = !{!43, !53, i1 false, i2 1}
!162 = !{i1 false, !163, i1 false, i2 1}
!163 = !{double 1.000000e+00, double 1.100000e+01}
!164 = distinct !{!164, !23}
!165 = !{i1 false, !73, i1 false, i2 1}
!166 = distinct !{!166, !23}
!167 = !{i1 false, !79, i1 false, i2 1}
!168 = !{i1 false, !169, i1 false, i2 1}
!169 = !{double 3.000000e+00, double 1.630000e+02}
!170 = !{!103, !171, i1 false, i2 1}
!171 = !{double 0.000000e+00, double 1.500000e+00}
!172 = !{!106, !171, i1 false, i2 1}
!173 = !{!48, !1, i1 false, i2 1}
!174 = distinct !{!174, !23}
!175 = distinct !{!175, !23}
!176 = !{i32 -1, i32 -1, i32 3, i32 -1}
!177 = !{i32 1, !76, i32 1, !16, i32 1, !50, i32 1, !19}
!178 = !{void (i32, i32, float*, i32)* @scale_2d}
!179 = !{!100, !20, i1 false, i2 1}
!180 = !{!97, !181, i1 false, i2 -1}
!181 = !{double 0.000000e+00, double 3.750000e+00}
!182 = !{!100, !181, i1 false, i2 -1}
!183 = distinct !{!183, !23}
!184 = distinct !{!184, !23}
!185 = !{i32 1, !76, i32 1, !76, i32 1, !47, i32 1, !19}
!186 = !{!187, !1, i1 false, i2 -1}
!187 = !{!"fixp", i32 32, i32 25}
!188 = !{!43, !20, i1 false, i2 1}
!189 = !{!190, !191, i1 false, i2 -1}
!190 = !{!"fixp", i32 -32, i32 24}
!191 = !{double 0.000000e+00, double 0x4050728F42FE8251}
!192 = !{!187, !191, i1 false, i2 -1}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}
