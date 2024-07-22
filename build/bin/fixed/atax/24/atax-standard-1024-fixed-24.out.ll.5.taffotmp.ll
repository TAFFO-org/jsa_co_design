; ModuleID = './build/bin/fixed/atax/24/atax-standard-1024-fixed-24.out.ll.4.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 !taffo.equivalentChild !28 {
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
  %A.u8_24fixp = alloca [20 x [22 x i32]], align 4, !taffo.info !42
  %x.u11_21fixp = alloca [22 x i32], align 4, !taffo.info !45
  %y = alloca [22 x float], align 4, !taffo.info !48, !taffo.initweight !50, !taffo.target !51
  %tmp.u22_10fixp = alloca [20 x i32], align 4, !taffo.info !52
  %arraydecay.u8_24fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u8_24fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay5.u11_21fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u11_21fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay6.flt.1flp = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !48, !taffo.initweight !55, !taffo.target !51
  %arraydecay7.u22_10fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u22_10fixp, i32 0, i32 0, !taffo.info !52
  call void @init_array.5_fixp(i32 20, i32 22, [22 x i32]* %arraydecay.u8_24fixp, i32* %arraydecay5.u11_21fixp, float* %arraydecay6.flt.1flp, i32* %arraydecay7.u22_10fixp), !taffo.info !56, !taffo.constinfo !57
  %arraydecay8.u8_24fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u8_24fixp, i32 0, i32 0, !taffo.info !42
  %u8_24fixp = bitcast [22 x i32]* %arraydecay8.u8_24fixp to i32*, !taffo.info !42
  call void @scale_2d.6_fixp(i32 20, i32 22, i32* %u8_24fixp, i32 1024), !taffo.info !56, !taffo.constinfo !58
  %arraydecay9.u11_21fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u11_21fixp, i32 0, i32 0, !taffo.info !45
  call void @scale_1d.1_fixp(i32 22, i32* %arraydecay9.u11_21fixp, i32 1024), !taffo.info !59, !taffo.constinfo !60
  %arraydecay10.flt.1flp = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !48, !taffo.initweight !55, !taffo.target !51
  call void @scale_1d.2_fixp(i32 22, float* %arraydecay10.flt.1flp, i32 1024), !taffo.info !61, !taffo.constinfo !60, !taffo.target !51
  %arraydecay11.u22_10fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u22_10fixp, i32 0, i32 0, !taffo.info !52
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay11.u22_10fixp, i32 1024), !taffo.info !62, !taffo.constinfo !60
  call void @timer_start(), !taffo.constinfo !63
  %arraydecay12.u8_24fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u8_24fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay13.u11_21fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u11_21fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay14.flt.1flp = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !48, !taffo.initweight !55, !taffo.target !51
  %arraydecay15.u22_10fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u22_10fixp, i32 0, i32 0, !taffo.info !52
  call void @kernel_atax.3_fixp(i32 20, i32 22, [22 x i32]* %arraydecay12.u8_24fixp, i32* %arraydecay13.u11_21fixp, float* %arraydecay14.flt.1flp, i32* %arraydecay15.u22_10fixp), !taffo.info !56, !taffo.constinfo !57
  call void @timer_stop(), !taffo.constinfo !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.flt.1flp = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !55, !taffo.target !51
  %.flt.fallback.1flp = load float, float* %arrayidx.flt.1flp, align 4, !taffo.info !48, !taffo.initweight !68, !taffo.target !51
  %arrayidx16 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %.flt.fallback.1flp, float* %arrayidx16, align 4, !taffo.info !61, !taffo.target !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !72
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !78, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !76
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !72
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !82 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !45
  %u11_21fixp = load i32, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !45
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !86
  %0 = lshr i32 %u11_21fixp, 1, !taffo.info !45
  %1 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !86
  %2 = ashr i32 %0, 10, !taffo.info !45
  %3 = ashr i32 %1, 10, !taffo.info !86
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 10), !taffo.info !87
  %mul.u21_11fixp = shl i32 %4, 1, !taffo.info !90
  %arrayidx1.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !45
  %5 = shl i32 %mul.u21_11fixp, 10, !taffo.info !90
  store i32 %5, i32* %arrayidx1.u11_21fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2_fixp(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !93 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.flt.1flp = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !94
  %.flt.fallback.1flp = load float, float* %arrayidx.flt.1flp, align 4, !taffo.info !48, !taffo.initweight !95
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !86
  %0 = uitofp i32 %conv.u11_21fixp to float, !taffo.info !86
  %1 = fdiv float %0, 0x4140000000000000, !taffo.info !86
  %mul.1flp = fmul float %.flt.fallback.1flp, %1, !taffo.info !96
  %arrayidx1.flt.1flp = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !94
  store float %mul.1flp, float* %arrayidx1.flt.1flp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.3_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u8_24fixp, i32* noundef %x.u11_21fixp, float* noundef %y, i32* noundef %tmp.u22_10fixp) #0 !taffo.initweight !100 !taffo.funinfo !101 !taffo.sourceFunction !104 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.flt.1flp = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !48, !taffo.initweight !94
  store float 0.000000e+00, float* %arrayidx.flt.1flp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !66
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !76
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u22_10fixp = getelementptr inbounds i32, i32* %tmp.u22_10fixp, i32 %i.1, !taffo.info !52
  store i32 0, i32* %arrayidx4.u22_10fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !66
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !76
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u22_10fixp = getelementptr inbounds i32, i32* %tmp.u22_10fixp, i32 %i.1, !taffo.info !52
  %u22_10fixp = load i32, i32* %arrayidx8.u22_10fixp, align 4, !taffo.info !108
  %arrayidx9.u8_24fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u8_24fixp, i32 %i.1, !taffo.info !42
  %arrayidx10.u8_24fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx9.u8_24fixp, i32 0, i32 %j.0, !taffo.info !42
  %u8_24fixp = load i32, i32* %arrayidx10.u8_24fixp, align 4, !taffo.info !42
  %arrayidx11.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %j.0, !taffo.info !45
  %u11_21fixp = load i32, i32* %arrayidx11.u11_21fixp, align 4, !taffo.info !45
  %0 = lshr i32 %u8_24fixp, 1, !taffo.info !42
  %1 = lshr i32 %u11_21fixp, 1, !taffo.info !45
  %2 = ashr i32 %0, 11, !taffo.info !42
  %3 = ashr i32 %1, 8, !taffo.info !45
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 12), !taffo.info !110
  %mul.u19_13fixp = shl i32 %4, 1, !taffo.info !113
  %5 = lshr i32 %u22_10fixp, 1, !taffo.info !108
  %6 = lshr i32 %mul.u19_13fixp, 4, !taffo.info !113
  %add.u23_9fixp = add i32 %5, %6, !taffo.info !115
  %arrayidx12.u22_10fixp = getelementptr inbounds i32, i32* %tmp.u22_10fixp, i32 %i.1, !taffo.info !52
  %7 = shl i32 %add.u23_9fixp, 1, !taffo.info !115
  store i32 %7, i32* %arrayidx12.u22_10fixp, align 4, !taffo.info !62
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !117

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !66
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !76
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19.flt.1flp = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !48, !taffo.initweight !94
  %.flt.fallback.1flp = load float, float* %arrayidx19.flt.1flp, align 4, !taffo.info !48, !taffo.initweight !95
  %arrayidx20.u8_24fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u8_24fixp, i32 %i.1, !taffo.info !42
  %arrayidx21.u8_24fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u8_24fixp, i32 0, i32 %j.1, !taffo.info !42
  %u8_24fixp2 = load i32, i32* %arrayidx21.u8_24fixp, align 4, !taffo.info !42
  %8 = uitofp i32 %u8_24fixp2 to float, !taffo.info !42
  %9 = fdiv float %8, 0x4170000000000000, !taffo.info !42
  %arrayidx22.u22_10fixp = getelementptr inbounds i32, i32* %tmp.u22_10fixp, i32 %i.1, !taffo.info !52
  %u22_10fixp1 = load i32, i32* %arrayidx22.u22_10fixp, align 4, !taffo.info !52
  %10 = uitofp i32 %u22_10fixp1 to float, !taffo.info !52
  %11 = fdiv float %10, 1.024000e+03, !taffo.info !52
  %mul23.1flp = fmul float %9, %11, !taffo.info !118
  %add24.1flp = fadd float %.flt.fallback.1flp, %mul23.1flp, !taffo.info !121
  %arrayidx25.flt.1flp = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !48, !taffo.initweight !94
  store float %add24.1flp, float* %arrayidx25.flt.1flp, align 4, !taffo.info !61
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !124

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !125

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u22_10fixp, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !126 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u22_10fixp = getelementptr inbounds i32, i32* %val.u22_10fixp, i32 %i.0, !taffo.info !52
  %u22_10fixp = load i32, i32* %arrayidx.u22_10fixp, align 4, !taffo.info !52
  %0 = uitofp i32 %u22_10fixp to float, !taffo.info !52
  %1 = fdiv float %0, 1.024000e+03, !taffo.info !52
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !86
  %2 = uitofp i32 %conv.u11_21fixp to float, !taffo.info !86
  %3 = fdiv float %2, 0x4140000000000000, !taffo.info !86
  %mul.1flp = fmul float %1, %3, !taffo.info !127
  %arrayidx1.u22_10fixp = getelementptr inbounds i32, i32* %val.u22_10fixp, i32 %i.0, !taffo.info !52
  %4 = fmul float 1.024000e+03, %mul.1flp, !taffo.info !127
  %5 = fptoui float %4 to i32, !taffo.info !127
  store i32 %5, i32* %arrayidx1.u22_10fixp, align 4, !taffo.info !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u8_24fixp, i32* noundef %x.u11_21fixp, float* noundef %y, i32* noundef %tmp.u22_10fixp) #0 !taffo.initweight !100 !taffo.funinfo !101 !taffo.sourceFunction !131 {
entry:
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !132
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !134, !taffo.initweight !50
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !136, !taffo.initweight !68
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !134, !taffo.initweight !137

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !138
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !138
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !132
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !139
  %div.u2_30fixp = shl i32 %2, 4, !taffo.info !141
  %3 = lshr i32 -2147483648, 1
  %add.u2_30fixp = add i32 %3, %div.u2_30fixp, !taffo.info !143, !taffo.constinfo !145
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %x.u11_21fixp, i32 %i.0, !taffo.info !146
  %4 = lshr i32 %add.u2_30fixp, 9, !taffo.info !143, !taffo.constinfo !145
  store i32 %4, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !105
  %arrayidx6.flt.1flp = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !147, !taffo.initweight !68
  store float 0.000000e+00, float* %arrayidx6.flt.1flp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !148, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !134, !taffo.initweight !50
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.info !136, !taffo.initweight !68
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.info !134, !taffo.initweight !137

for.body10:                                       ; preds = %for.cond7
  %arrayidx11.u22_10fixp = getelementptr inbounds i32, i32* %tmp.u22_10fixp, i32 %i.1, !taffo.info !150
  store i32 0, i32* %arrayidx11.u22_10fixp, align 4, !taffo.info !105, !taffo.constinfo !106
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.info !134, !taffo.initweight !50
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.info !136, !taffo.initweight !68
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.info !134, !taffo.initweight !137

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.info !151, !taffo.initweight !68
  %rem = srem i32 %add16, %n, !taffo.info !153, !taffo.initweight !137
  %conv17.u5_27fixp = shl i32 %rem, 27, !taffo.info !155
  %mul = mul nsw i32 5, %m, !taffo.info !156, !taffo.constinfo !21
  %conv18.u7_25fixp = shl i32 %mul, 25, !taffo.info !158, !taffo.constinfo !21
  %5 = lshr i32 %conv17.u5_27fixp, 1, !taffo.info !155
  %6 = lshr i32 %conv18.u7_25fixp, 1, !taffo.info !158, !taffo.constinfo !21
  %7 = ashr i32 %5, 2, !taffo.info !155
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 24), !taffo.info !160
  %div19.u1_31fixp = shl i32 %8, 7, !taffo.info !163
  %arrayidx20.u8_24fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u8_24fixp, i32 %i.1, !taffo.info !165
  %arrayidx21.u8_24fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u8_24fixp, i32 0, i32 %j.0, !taffo.info !165
  %9 = lshr i32 %div19.u1_31fixp, 7, !taffo.info !163
  store i32 %9, i32* %arrayidx21.u8_24fixp, align 4, !taffo.info !105
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.info !148, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !166

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.info !148, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !167

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !168 !taffo.funinfo !169 !taffo.sourceFunction !170 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !76
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %0, !taffo.info !42
  %arrayidx4.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx.u8_24fixp, i32 %j.0, !taffo.info !42
  %u8_24fixp = load i32, i32* %arrayidx4.u8_24fixp, align 4, !taffo.info !42
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !86
  %1 = lshr i32 %u8_24fixp, 1, !taffo.info !42
  %2 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !86
  %3 = ashr i32 %1, 10, !taffo.info !42
  %4 = ashr i32 %2, 7, !taffo.info !86
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 13), !taffo.info !171
  %mul.u18_14fixp = shl i32 %5, 1, !taffo.info !174
  %6 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx5.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %6, !taffo.info !42
  %arrayidx6.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx5.u8_24fixp, i32 %j.0, !taffo.info !42
  %7 = shl i32 %mul.u18_14fixp, 10, !taffo.info !174
  store i32 %7, i32* %arrayidx6.u8_24fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !176

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !177

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
!1 = !{double 0.000000e+00, double 0x41FEC418A0000000}
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
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{null, null, null}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null}
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
!43 = !{!"fixp", i32 32, i32 24}
!44 = !{double 0.000000e+00, double 0x406AE1479F666235}
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 32, i32 21}
!47 = !{double 1.024000e+03, double 0x409F45D1800A7C5B}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"float", i32 1, double 0x41FEC418A0000000}
!50 = !{i32 0}
!51 = !{!"y"}
!52 = !{!53, !54, i1 false, i2 -1}
!53 = !{!"fixp", i32 32, i32 10}
!54 = !{double 0.000000e+00, double 0x414E851EC0000000}
!55 = !{i32 1}
!56 = !{i1 false, !44, i1 false, i2 -1}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, !47, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !1, i1 false, i2 -1}
!62 = !{i1 false, !54, i1 false, i2 -1}
!63 = !{i1 false}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 2.300000e+01}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 1.000000e+00}
!68 = !{i32 2}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.300000e+01}
!71 = distinct !{!71, !23}
!72 = !{i1 false, i1 false, i1 false}
!73 = !{i32 1, !74, i32 1, !0}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 2.200000e+01, double 2.200000e+01}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 0.000000e+00}
!80 = distinct !{!80, !23}
!81 = !{i32 -1, i32 2, i32 -1}
!82 = !{i32 1, !74, i32 1, !45, i32 1, !83}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.024000e+03, double 1.024000e+03}
!85 = !{void (i32, float*, i32)* @scale_1d}
!86 = !{!46, !84, i1 false, i2 1}
!87 = !{!88, !89, i1 false, i2 -1}
!88 = !{!"fixp", i32 -32, i32 10}
!89 = !{double 0x4130000000000000, double 0x413F45D1800A7C5B}
!90 = !{!91, !89, i1 false, i2 -1}
!91 = !{!"fixp", i32 32, i32 11}
!92 = distinct !{!92, !23}
!93 = !{i32 1, !74, i32 1, !48, i32 1, !83}
!94 = !{i32 5}
!95 = !{i32 6}
!96 = !{!97, !98, i1 false, i2 -1}
!97 = !{!"float", i32 1, double 0x429EC418A0000000}
!98 = !{double 0.000000e+00, double 0x429EC418A0000000}
!99 = distinct !{!99, !23}
!100 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!101 = !{i32 1, !102, i32 1, !74, i32 1, !42, i32 1, !45, i32 1, !48, i32 1, !52}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 2.000000e+01, double 2.000000e+01}
!104 = distinct !{null}
!105 = !{i1 false, i1 false, i1 false, i2 1}
!106 = !{!78, i1 false}
!107 = distinct !{!107, !23}
!108 = !{!109, !54, i1 false, i2 -1}
!109 = !{!"fixp", i32 32, i32 9}
!110 = !{!111, !112, i1 false, i2 -1}
!111 = !{!"fixp", i32 -32, i32 12}
!112 = !{double 0.000000e+00, double 0x411A44E31FC49A55}
!113 = !{!114, !112, i1 false, i2 -1}
!114 = !{!"fixp", i32 32, i32 13}
!115 = !{!109, !116, i1 false, i2 -1}
!116 = !{double 0.000000e+00, double 0x4150E6DD91FC49A5}
!117 = distinct !{!117, !23}
!118 = !{!119, !120, i1 false, i2 -1}
!119 = !{!"float", i32 1, double 0x41C9A3054B9950C6}
!120 = !{double 0.000000e+00, double 0x41C9A3054B9950C6}
!121 = !{!122, !123, i1 false, i2 -1}
!122 = !{!"float", i32 1, double 0x4200FC3CA4B9950C}
!123 = !{double 0.000000e+00, double 0x4200FC3CA4B9950C}
!124 = distinct !{!124, !23}
!125 = distinct !{!125, !23}
!126 = !{i32 1, !102, i32 1, !52, i32 1, !83}
!127 = !{!128, !129, i1 false, i2 -1}
!128 = !{!"float", i32 1, double 0x41EE851EC0000000}
!129 = !{double 0.000000e+00, double 0x41EE851EC0000000}
!130 = distinct !{!130, !23}
!131 = distinct !{null}
!132 = !{!133, !75, i1 false, i2 1}
!133 = !{!"fixp", i32 32, i32 27}
!134 = !{i1 false, !135, i1 false, i2 -1}
!135 = !{double 0.000000e+00, double 2.200000e+01}
!136 = !{i1 false, !67, i1 false, i2 -1}
!137 = !{i32 3}
!138 = !{!133, !135, i1 false, i2 -1}
!139 = !{!140, !67, i1 false, i2 1}
!140 = !{!"fixp", i32 -32, i32 26}
!141 = !{!142, !67, i1 false, i2 1}
!142 = !{!"fixp", i32 32, i32 30}
!143 = !{!142, !144, i1 false, i2 1}
!144 = !{double 1.000000e+00, double 2.000000e+00}
!145 = !{!76, i1 false}
!146 = !{!46, !47, i1 false, i2 1}
!147 = !{!49, !1, i1 false, i2 1}
!148 = !{i1 false, !70, i1 false, i2 -1}
!149 = distinct !{!149, !23}
!150 = !{!53, !54, i1 false, i2 1}
!151 = !{i1 false, !152, i1 false, i2 -1}
!152 = !{double 0.000000e+00, double 4.400000e+01}
!153 = !{i1 false, !154, i1 false, i2 -1}
!154 = !{double 0.000000e+00, double 2.100000e+01}
!155 = !{!133, !154, i1 false, i2 -1}
!156 = !{i1 false, !157, i1 false, i2 0}
!157 = !{double 1.000000e+02, double 1.000000e+02}
!158 = !{!159, !157, i1 false, i2 1}
!159 = !{!"fixp", i32 32, i32 25}
!160 = !{!161, !162, i1 false, i2 -1}
!161 = !{!"fixp", i32 -32, i32 24}
!162 = !{double 0.000000e+00, double 2.100000e-01}
!163 = !{!164, !162, i1 false, i2 -1}
!164 = !{!"fixp", i32 32, i32 31}
!165 = !{!43, !44, i1 false, i2 1}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, !23}
!168 = !{i32 -1, i32 -1, i32 3, i32 -1}
!169 = !{i32 1, !102, i32 1, !74, i32 1, !42, i32 1, !83}
!170 = !{void (i32, i32, float*, i32)* @scale_2d}
!171 = !{!172, !173, i1 false, i2 -1}
!172 = !{!"fixp", i32 -32, i32 13}
!173 = !{double 0.000000e+00, double 0x410AE1479F666235}
!174 = !{!175, !173, i1 false, i2 -1}
!175 = !{!"fixp", i32 32, i32 14}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
