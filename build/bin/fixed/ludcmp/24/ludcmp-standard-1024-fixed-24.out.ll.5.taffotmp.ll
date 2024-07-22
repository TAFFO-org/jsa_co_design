; ModuleID = './build/bin/fixed/ludcmp/24/ludcmp-standard-1024-fixed-24.out.ll.4.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A.u14_18fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !42
  %B.u14_18fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !45
  %b.u13_19fixp = alloca [20 x i32], align 4, !taffo.info !47
  %x.s4_28fixp = alloca [20 x i32], align 4, !taffo.info !50, !taffo.target !52
  %y.u13_19fixp = alloca [20 x i32], align 4, !taffo.info !53
  %arraydecay.u14_18fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u14_18fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay6.u14_18fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u14_18fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay7.u13_19fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u13_19fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay8.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !52
  %arraydecay9.u13_19fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u13_19fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.5_fixp(i32 20, [20 x i32]* %arraydecay.u14_18fixp, [20 x i32]* %arraydecay6.u14_18fixp, i32* %arraydecay7.u13_19fixp, i32* %arraydecay8.s4_28fixp, i32* %arraydecay9.u13_19fixp), !taffo.info !55, !taffo.constinfo !56
  %arraydecay10.u14_18fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u14_18fixp, i32 0, i32 0, !taffo.info !42
  %u14_18fixp1 = bitcast [20 x i32]* %arraydecay10.u14_18fixp to i32*, !taffo.info !42
  call void @scale_2d.6_fixp(i32 20, i32 20, i32* %u14_18fixp1, i32 1024), !taffo.info !55, !taffo.constinfo !57
  %arraydecay11.u14_18fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u14_18fixp, i32 0, i32 0, !taffo.info !45
  %u14_18fixp = bitcast [20 x i32]* %arraydecay11.u14_18fixp to i32*, !taffo.info !45
  call void @scale_2d.6_fixp(i32 20, i32 20, i32* %u14_18fixp, i32 1024), !taffo.info !58, !taffo.constinfo !57
  %arraydecay12.u13_19fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u13_19fixp, i32 0, i32 0, !taffo.info !47
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay12.u13_19fixp, i32 1024), !taffo.info !59, !taffo.constinfo !60
  %arraydecay13.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !52
  call void @scale_1d.2_fixp(i32 20, i32* %arraydecay13.s4_28fixp, i32 1024), !taffo.info !61, !taffo.constinfo !60, !taffo.target !52
  %arraydecay14.u13_19fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u13_19fixp, i32 0, i32 0, !taffo.info !53
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay14.u13_19fixp, i32 1024), !taffo.info !62, !taffo.constinfo !60
  call void @timer_start(), !taffo.constinfo !63
  %arraydecay15.u14_18fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u14_18fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay16.u13_19fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u13_19fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay17.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !52
  %arraydecay18.u13_19fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u13_19fixp, i32 0, i32 0, !taffo.info !53
  call void @kernel_ludcmp.3_fixp(i32 20, [20 x i32]* %arraydecay15.u14_18fixp, i32* %arraydecay16.u13_19fixp, i32* %arraydecay17.s4_28fixp, i32* %arraydecay18.u13_19fixp), !taffo.info !55, !taffo.constinfo !64
  call void @timer_stop(), !taffo.constinfo !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 %i.0, !taffo.info !50, !taffo.target !52
  %s4_28fixp = load i32, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !50, !taffo.target !52
  %0 = sitofp i32 %s4_28fixp to float, !taffo.info !50, !taffo.target !52
  %1 = fdiv float %0, 0x41B0000000000000, !taffo.info !50, !taffo.target !52
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx19, align 4, !taffo.info !61, !taffo.target !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0)), !taffo.constinfo !72
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !24 !taffo.funinfo !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !78, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !76
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !72
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u13_19fixp, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !82 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u13_19fixp = getelementptr inbounds i32, i32* %val.u13_19fixp, i32 %i.0, !taffo.info !47
  %u13_19fixp = load i32, i32* %arrayidx.u13_19fixp, align 4, !taffo.info !47
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !86
  %0 = lshr i32 %u13_19fixp, 1, !taffo.info !47
  %1 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !86
  %2 = ashr i32 %0, 10, !taffo.info !47
  %3 = ashr i32 %1, 12, !taffo.info !86
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 8), !taffo.info !88
  %mul.u23_9fixp = shl i32 %4, 1, !taffo.info !91
  %arrayidx1.u13_19fixp = getelementptr inbounds i32, i32* %val.u13_19fixp, i32 %i.0, !taffo.info !47
  %5 = shl i32 %mul.u23_9fixp, 10, !taffo.info !91
  store i32 %5, i32* %arrayidx1.u13_19fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.3_fixp(i32 noundef %n, [20 x i32]* noundef %A.u14_18fixp, i32* noundef %b.u13_19fixp, i32* noundef %x.s4_28fixp, i32* noundef %y.u13_19fixp) #0 !taffo.initweight !94 !taffo.funinfo !95 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !67
  %cmp3 = icmp slt i32 %j.0, %i.0, !taffo.info !78
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.0, !taffo.info !42
  %arrayidx5.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u14_18fixp, i32 0, i32 %j.0, !taffo.info !42
  %u14_18fixp = load i32, i32* %arrayidx5.u14_18fixp, align 4, !taffo.info !97
  %0 = shl i32 %u14_18fixp, 5, !taffo.info !97
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ], !taffo.info !67
  %w.0.s9_23fixp = phi i32 [ %0, %for.body4 ], [ %6, %for.inc ], !taffo.info !97
  %cmp7 = icmp slt i32 %k.0, %j.0, !taffo.info !78
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.0, !taffo.info !42
  %arrayidx10.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx9.u14_18fixp, i32 0, i32 %k.0, !taffo.info !42
  %u14_18fixp9 = load i32, i32* %arrayidx10.u14_18fixp, align 4, !taffo.info !42
  %arrayidx11.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %k.0, !taffo.info !42
  %arrayidx12.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u14_18fixp, i32 0, i32 %j.0, !taffo.info !42
  %u14_18fixp10 = load i32, i32* %arrayidx12.u14_18fixp, align 4, !taffo.info !42
  %1 = lshr i32 %u14_18fixp9, 1, !taffo.info !42
  %2 = lshr i32 %u14_18fixp10, 1, !taffo.info !42
  %3 = ashr i32 %1, 13, !taffo.info !42
  %4 = ashr i32 %2, 13, !taffo.info !42
  %mul.s28_4fixp = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 4), !taffo.info !100
  %5 = ashr i32 %w.0.s9_23fixp, 19, !taffo.info !97
  %sub.s28_4fixp = sub i32 %5, %mul.s28_4fixp, !taffo.info !103
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.info !76, !taffo.constinfo !21
  %6 = shl i32 %sub.s28_4fixp, 19, !taffo.info !103
  br label %for.cond6, !llvm.loop !105

for.end:                                          ; preds = %for.cond6
  %arrayidx13.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %j.0, !taffo.info !42
  %arrayidx14.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx13.u14_18fixp, i32 0, i32 %j.0, !taffo.info !42
  %u14_18fixp11 = load i32, i32* %arrayidx14.u14_18fixp, align 4, !taffo.info !42
  %7 = lshr i32 %u14_18fixp11, 1, !taffo.info !42
  %8 = ashr i32 %w.0.s9_23fixp, 6, !taffo.info !97
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %7, i32 17), !taffo.info !106
  %div.s12_20fixp = shl i32 %9, 3, !taffo.info !109
  %arrayidx15.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.0, !taffo.info !42
  %arrayidx16.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx15.u14_18fixp, i32 0, i32 %j.0, !taffo.info !42
  %10 = ashr i32 %div.s12_20fixp, 2, !taffo.info !109
  store i32 %10, i32* %arrayidx16.u14_18fixp, align 4, !taffo.info !111
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !112

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !67
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !76
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.0, !taffo.info !42
  %arrayidx24.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u14_18fixp, i32 0, i32 %j.1, !taffo.info !42
  %u14_18fixp12 = load i32, i32* %arrayidx24.u14_18fixp, align 4, !taffo.info !97
  %11 = shl i32 %u14_18fixp12, 5, !taffo.info !97
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ], !taffo.info !67
  %w.1.s9_23fixp = phi i32 [ %11, %for.body22 ], [ %17, %for.inc34 ], !taffo.info !97
  %cmp26 = icmp slt i32 %k.1, %i.0, !taffo.info !78
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.0, !taffo.info !42
  %arrayidx29.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx28.u14_18fixp, i32 0, i32 %k.1, !taffo.info !42
  %u14_18fixp13 = load i32, i32* %arrayidx29.u14_18fixp, align 4, !taffo.info !42
  %arrayidx30.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %k.1, !taffo.info !42
  %arrayidx31.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx30.u14_18fixp, i32 0, i32 %j.1, !taffo.info !42
  %u14_18fixp14 = load i32, i32* %arrayidx31.u14_18fixp, align 4, !taffo.info !42
  %12 = lshr i32 %u14_18fixp13, 1, !taffo.info !42
  %13 = lshr i32 %u14_18fixp14, 1, !taffo.info !42
  %14 = ashr i32 %12, 13, !taffo.info !42
  %15 = ashr i32 %13, 13, !taffo.info !42
  %mul32.s28_4fixp = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 4), !taffo.info !100
  %16 = ashr i32 %w.1.s9_23fixp, 19, !taffo.info !97
  %sub33.s28_4fixp = sub i32 %16, %mul32.s28_4fixp, !taffo.info !103
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.info !76, !taffo.constinfo !21
  %17 = shl i32 %sub33.s28_4fixp, 19, !taffo.info !103
  br label %for.cond25, !llvm.loop !113

for.end36:                                        ; preds = %for.cond25
  %arrayidx37.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.0, !taffo.info !42
  %arrayidx38.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx37.u14_18fixp, i32 0, i32 %j.1, !taffo.info !42
  %18 = ashr i32 %w.1.s9_23fixp, 5, !taffo.info !97
  store i32 %18, i32* %arrayidx38.u14_18fixp, align 4, !taffo.info !111
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !114

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !115

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ], !taffo.info !67
  %cmp46 = icmp slt i32 %i.1, %n, !taffo.info !76
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48.u13_19fixp = getelementptr inbounds i32, i32* %b.u13_19fixp, i32 %i.1, !taffo.info !47
  %u13_19fixp = load i32, i32* %arrayidx48.u13_19fixp, align 4, !taffo.info !97
  %19 = shl i32 %u13_19fixp, 4, !taffo.info !97
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ], !taffo.info !67
  %w.2.s9_23fixp = phi i32 [ %19, %for.body47 ], [ %25, %for.inc57 ], !taffo.info !97
  %cmp50 = icmp slt i32 %j.2, %i.1, !taffo.info !78
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.1, !taffo.info !42
  %arrayidx53.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u14_18fixp, i32 0, i32 %j.2, !taffo.info !42
  %u14_18fixp15 = load i32, i32* %arrayidx53.u14_18fixp, align 4, !taffo.info !42
  %arrayidx54.u13_19fixp = getelementptr inbounds i32, i32* %y.u13_19fixp, i32 %j.2, !taffo.info !53
  %u13_19fixp7 = load i32, i32* %arrayidx54.u13_19fixp, align 4, !taffo.info !53
  %20 = lshr i32 %u14_18fixp15, 1, !taffo.info !42
  %21 = lshr i32 %u13_19fixp7, 1, !taffo.info !53
  %22 = ashr i32 %20, 12, !taffo.info !42
  %23 = ashr i32 %21, 13, !taffo.info !53
  %mul55.s27_5fixp = call i32 @llvm.smul.fix.i32(i32 %22, i32 %23, i32 5), !taffo.info !116
  %24 = ashr i32 %w.2.s9_23fixp, 18, !taffo.info !97
  %sub56.s27_5fixp = sub i32 %24, %mul55.s27_5fixp, !taffo.info !119
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.info !76, !taffo.constinfo !21
  %25 = shl i32 %sub56.s27_5fixp, 18, !taffo.info !119
  br label %for.cond49, !llvm.loop !121

for.end59:                                        ; preds = %for.cond49
  %arrayidx60.u13_19fixp = getelementptr inbounds i32, i32* %y.u13_19fixp, i32 %i.1, !taffo.info !53
  %26 = ashr i32 %w.2.s9_23fixp, 4, !taffo.info !97
  store i32 %26, i32* %arrayidx60.u13_19fixp, align 4, !taffo.info !111
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond45, !llvm.loop !122

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.info !123, !taffo.constinfo !21
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ], !taffo.info !125
  %cmp66 = icmp sge i32 %i.2, 0, !taffo.info !76
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68.u13_19fixp = getelementptr inbounds i32, i32* %y.u13_19fixp, i32 %i.2, !taffo.info !53
  %u13_19fixp8 = load i32, i32* %arrayidx68.u13_19fixp, align 4, !taffo.info !97
  %add = add nsw i32 %i.2, 1, !taffo.info !74, !taffo.constinfo !21
  %27 = shl i32 %u13_19fixp8, 4, !taffo.info !97
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ], !taffo.info !127
  %w.3.s9_23fixp = phi i32 [ %27, %for.body67 ], [ %32, %for.inc77 ], !taffo.info !97
  %cmp70 = icmp slt i32 %j.3, %n, !taffo.info !78
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.2, !taffo.info !42
  %arrayidx73.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx72.u14_18fixp, i32 0, i32 %j.3, !taffo.info !42
  %u14_18fixp16 = load i32, i32* %arrayidx73.u14_18fixp, align 4, !taffo.info !42
  %arrayidx74.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %j.3, !taffo.info !50
  %s4_28fixp = load i32, i32* %arrayidx74.s4_28fixp, align 4, !taffo.info !50
  %28 = lshr i32 %u14_18fixp16, 1, !taffo.info !42
  %29 = ashr i32 %28, 2, !taffo.info !42
  %30 = ashr i32 %s4_28fixp, 13, !taffo.info !50
  %mul75.s17_15fixp = call i32 @llvm.smul.fix.i32(i32 %29, i32 %30, i32 15), !taffo.info !129
  %31 = ashr i32 %w.3.s9_23fixp, 8, !taffo.info !97
  %sub76.s17_15fixp = sub i32 %31, %mul75.s17_15fixp, !taffo.info !132
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !134, !taffo.constinfo !21
  %32 = shl i32 %sub76.s17_15fixp, 8, !taffo.info !132
  br label %for.cond69, !llvm.loop !136

for.end79:                                        ; preds = %for.cond69
  %arrayidx80.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.2, !taffo.info !42
  %arrayidx81.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx80.u14_18fixp, i32 0, i32 %i.2, !taffo.info !42
  %u14_18fixp17 = load i32, i32* %arrayidx81.u14_18fixp, align 4, !taffo.info !42
  %33 = lshr i32 %u14_18fixp17, 1, !taffo.info !42
  %34 = ashr i32 %w.3.s9_23fixp, 6, !taffo.info !97
  %35 = call i32 @llvm.sdiv.fix.i32(i32 %34, i32 %33, i32 17), !taffo.info !106
  %div82.s12_20fixp = shl i32 %35, 3, !taffo.info !109
  %arrayidx83.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %i.2, !taffo.info !50
  %36 = shl i32 %div82.s12_20fixp, 8, !taffo.info !109
  store i32 %36, i32* %arrayidx83.s4_28fixp, align 4, !taffo.info !111
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.info !137, !taffo.constinfo !21
  br label %for.cond65, !llvm.loop !139

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2_fixp(i32 noundef %n, i32* noundef %val.s4_28fixp, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !140 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds i32, i32* %val.s4_28fixp, i32 %i.0, !taffo.info !50
  %s4_28fixp = load i32, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !50
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !86
  %0 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !86
  %1 = ashr i32 %s4_28fixp, 9, !taffo.info !50
  %2 = ashr i32 %0, 1, !taffo.info !86
  %mul.s13_19fixp = call i32 @llvm.smul.fix.i32(i32 %1, i32 %2, i32 19), !taffo.info !141
  %arrayidx1.s4_28fixp = getelementptr inbounds i32, i32* %val.s4_28fixp, i32 %i.0, !taffo.info !50
  %3 = shl i32 %mul.s13_19fixp, 9, !taffo.info !141
  store i32 %3, i32* %arrayidx1.s4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5_fixp(i32 noundef %n, [20 x i32]* noundef %A.u14_18fixp, [20 x i32]* noundef %B.u14_18fixp, i32* noundef %b.u13_19fixp, i32* noundef %x.s4_28fixp, i32* noundef %y.u13_19fixp) #0 !taffo.initweight !145 !taffo.funinfo !146 !taffo.sourceFunction !147 {
entry:
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !148
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !150, !taffo.initweight !151
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !154, !taffo.initweight !156

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %i.0, !taffo.info !157
  store i32 0, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  %arrayidx5.u13_19fixp = getelementptr inbounds i32, i32* %y.u13_19fixp, i32 %i.0, !taffo.info !160
  store i32 0, i32* %arrayidx5.u13_19fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  %add = add nsw i32 %i.0, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !162, !taffo.constinfo !21
  %0 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !162, !taffo.constinfo !21
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !148
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !163
  %div.u2_30fixp = shl i32 %2, 4, !taffo.info !166
  %3 = lshr i32 %div.u2_30fixp, 1, !taffo.info !166
  %4 = shl i32 2, 29
  %5 = ashr i32 %3, 1, !taffo.info !166
  %6 = ashr i32 %4, 1
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 28), !taffo.info !168
  %div8.u3_29fixp = shl i32 %7, 1, !taffo.info !170, !taffo.constinfo !172
  %add9.u3_29fixp = add i32 %div8.u3_29fixp, -2147483648, !taffo.info !173, !taffo.constinfo !175
  %arrayidx11.u13_19fixp = getelementptr inbounds i32, i32* %b.u13_19fixp, i32 %i.0, !taffo.info !178
  %8 = lshr i32 %add9.u3_29fixp, 10, !taffo.info !173, !taffo.constinfo !175
  store i32 %8, i32* %arrayidx11.u13_19fixp, align 4, !taffo.info !158
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.info !150, !taffo.initweight !151
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.info !154, !taffo.initweight !156

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.info !150, !taffo.initweight !151
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.info !154, !taffo.initweight !156

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.info !180, !taffo.initweight !153, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !182, !taffo.initweight !156
  %conv20.s6_26fixp = shl i32 %rem, 26, !taffo.info !184
  %conv21.u5_27fixp = shl i32 %n, 27, !taffo.info !148
  %9 = lshr i32 %conv21.u5_27fixp, 1, !taffo.info !148
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %conv20.s6_26fixp, i32 %9, i32 26), !taffo.info !185
  %div22.s2_30fixp = shl i32 %10, 4, !taffo.info !187
  %11 = lshr i32 -2147483648, 1
  %add23.s2_30fixp = add i32 %div22.s2_30fixp, %11, !taffo.info !189, !taffo.constinfo !191
  %arrayidx24.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.1, !taffo.info !192
  %arrayidx25.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx24.u14_18fixp, i32 0, i32 %j.0, !taffo.info !192
  %12 = ashr i32 %add23.s2_30fixp, 12, !taffo.info !189, !taffo.constinfo !191
  store i32 %12, i32* %arrayidx25.u14_18fixp, align 4, !taffo.info !158
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !193

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.info !194, !taffo.initweight !151
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.info !154, !taffo.initweight !156

for.body33:                                       ; preds = %for.cond30
  %arrayidx34.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.1, !taffo.info !192
  %arrayidx35.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx34.u14_18fixp, i32 0, i32 %j.1, !taffo.info !192
  store i32 0, i32* %arrayidx35.u14_18fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.info !196, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !198

for.end38:                                        ; preds = %for.cond30
  %arrayidx39.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %i.1, !taffo.info !192
  %arrayidx40.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx39.u14_18fixp, i32 0, i32 %i.1, !taffo.info !192
  store i32 262144, i32* %arrayidx40.u14_18fixp, align 4, !taffo.info !158, !taffo.constinfo !199
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !200

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ], !taffo.info !67
  %cmp45 = icmp slt i32 %r.0, %n, !taffo.info !76
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ], !taffo.info !67
  %cmp49 = icmp slt i32 %s.0, %n, !taffo.info !76
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u14_18fixp, i32 %r.0, !taffo.info !45
  %arrayidx53.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u14_18fixp, i32 0, i32 %s.0, !taffo.info !45
  store i32 0, i32* %arrayidx53.u14_18fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !201

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !202

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ], !taffo.info !67
  %cmp61 = icmp slt i32 %t.0, %n, !taffo.info !76
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ], !taffo.info !67
  %cmp65 = icmp slt i32 %r.1, %n, !taffo.info !76
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ], !taffo.info !67
  %cmp69 = icmp slt i32 %s.1, %n, !taffo.info !76
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %r.1, !taffo.info !42
  %arrayidx73.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx72.u14_18fixp, i32 0, i32 %t.0, !taffo.info !42
  %u14_18fixp = load i32, i32* %arrayidx73.u14_18fixp, align 4, !taffo.info !42
  %arrayidx74.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %s.1, !taffo.info !42
  %arrayidx75.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx74.u14_18fixp, i32 0, i32 %t.0, !taffo.info !42
  %u14_18fixp1 = load i32, i32* %arrayidx75.u14_18fixp, align 4, !taffo.info !42
  %13 = lshr i32 %u14_18fixp, 1, !taffo.info !42
  %14 = lshr i32 %u14_18fixp1, 1, !taffo.info !42
  %15 = ashr i32 %13, 13, !taffo.info !42
  %16 = ashr i32 %14, 13, !taffo.info !42
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 4), !taffo.info !100
  %mul.u27_5fixp = shl i32 %17, 1, !taffo.info !203
  %arrayidx76.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u14_18fixp, i32 %r.1, !taffo.info !45
  %arrayidx77.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx76.u14_18fixp, i32 0, i32 %s.1, !taffo.info !45
  %u14_18fixp2 = load i32, i32* %arrayidx77.u14_18fixp, align 4, !taffo.info !45
  %18 = lshr i32 %u14_18fixp2, 13, !taffo.info !45
  %add78.u27_5fixp = add i32 %18, %mul.u27_5fixp, !taffo.info !205
  %19 = shl i32 %add78.u27_5fixp, 13, !taffo.info !205
  store i32 %19, i32* %arrayidx77.u14_18fixp, align 4, !taffo.info !58
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !207

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond64, !llvm.loop !208

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !209

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ], !taffo.info !67
  %cmp89 = icmp slt i32 %r.2, %n, !taffo.info !76
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ], !taffo.info !67
  %cmp93 = icmp slt i32 %s.2, %n, !taffo.info !76
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u14_18fixp, i32 %r.2, !taffo.info !45
  %arrayidx97.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx96.u14_18fixp, i32 0, i32 %s.2, !taffo.info !45
  %u14_18fixp3 = load i32, i32* %arrayidx97.u14_18fixp, align 4, !taffo.info !45
  %arrayidx98.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u14_18fixp, i32 %r.2, !taffo.info !42
  %arrayidx99.u14_18fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx98.u14_18fixp, i32 0, i32 %s.2, !taffo.info !42
  store i32 %u14_18fixp3, i32* %arrayidx99.u14_18fixp, align 4, !taffo.info !55
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond92, !llvm.loop !210

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond88, !llvm.loop !211

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u14_18fixp, i32 noundef %factor) #0 !taffo.initweight !212 !taffo.funinfo !213 !taffo.sourceFunction !214 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !76
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx.u14_18fixp = getelementptr inbounds i32, i32* %val.u14_18fixp, i32 %0, !taffo.info !42
  %arrayidx4.u14_18fixp = getelementptr inbounds i32, i32* %arrayidx.u14_18fixp, i32 %j.0, !taffo.info !42
  %u14_18fixp = load i32, i32* %arrayidx4.u14_18fixp, align 4, !taffo.info !42
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !86
  %1 = lshr i32 %u14_18fixp, 1, !taffo.info !42
  %2 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !86
  %3 = ashr i32 %1, 10, !taffo.info !42
  %4 = ashr i32 %2, 13, !taffo.info !86
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 7), !taffo.info !215
  %mul.u24_8fixp = shl i32 %5, 1, !taffo.info !218
  %6 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx5.u14_18fixp = getelementptr inbounds i32, i32* %val.u14_18fixp, i32 %6, !taffo.info !42
  %arrayidx6.u14_18fixp = getelementptr inbounds i32, i32* %arrayidx5.u14_18fixp, i32 %j.0, !taffo.info !42
  %7 = shl i32 %mul.u24_8fixp, 10, !taffo.info !218
  store i32 %7, i32* %arrayidx6.u14_18fixp, align 4, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !220

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !221

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
!1 = !{double -3.794700e-02, double 0x400FFCF893FAF428}
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
!43 = !{!"fixp", i32 32, i32 18}
!44 = !{double 1.000000e-01, double 0x40C05851DFFC547A}
!45 = !{!43, !46, i1 false, i2 -1}
!46 = !{double 1.024000e+03, double 0x40C05851DFFC547A}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 19}
!49 = !{double 0x40B01999A005C465, double 4.608000e+03}
!50 = !{!51, !1, i1 false, i2 -1}
!51 = !{!"fixp", i32 -32, i32 28}
!52 = !{!"x"}
!53 = !{!48, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x40B01999A005C465}
!55 = !{i1 false, !44, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false, !46, i1 false, i2 -1}
!59 = !{i1 false, !49, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !1, i1 false, i2 -1}
!62 = !{i1 false, !54, i1 false, i2 -1}
!63 = !{i1 false}
!64 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 2.100000e+01}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.000000e+00}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.100000e+01}
!71 = distinct !{!71, !23}
!72 = !{i1 false, i1 false, i1 false}
!73 = !{i32 1, !74, i32 1, !0}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 2.000000e+01, double 2.000000e+01}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 0.000000e+00}
!80 = distinct !{!80, !23}
!81 = !{i32 -1, i32 2, i32 -1}
!82 = !{i32 1, !74, i32 1, !47, i32 1, !83}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.024000e+03, double 1.024000e+03}
!85 = !{void (i32, float*, i32)* @scale_1d}
!86 = !{!87, !84, i1 false, i2 1}
!87 = !{!"fixp", i32 32, i32 21}
!88 = !{!89, !90, i1 false, i2 -1}
!89 = !{!"fixp", i32 -32, i32 8}
!90 = !{double 0x41501999A005C465, double 0x4152000000000000}
!91 = !{!92, !90, i1 false, i2 -1}
!92 = !{!"fixp", i32 32, i32 9}
!93 = distinct !{!93, !23}
!94 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!95 = !{i32 1, !74, i32 1, !42, i32 1, !47, i32 1, !50, i32 1, !53}
!96 = distinct !{null}
!97 = !{!98, !99, i1 false, i2 -1}
!98 = !{!"fixp", i32 -32, i32 23}
!99 = !{double -2.000000e+02, double 2.000000e+02}
!100 = !{!101, !102, i1 false, i2 -1}
!101 = !{!"fixp", i32 -32, i32 4}
!102 = !{double 0x3F847AE147AE147C, double 0x4190B28B463B78B0}
!103 = !{!101, !104, i1 false, i2 -1}
!104 = !{double 0xC190B28E663B78B0, double 1.999900e+02}
!105 = distinct !{!105, !23}
!106 = !{!107, !108, i1 false, i2 -1}
!107 = !{!"fixp", i32 -32, i32 17}
!108 = !{double -2.000000e+03, double 2.000000e+03}
!109 = !{!110, !108, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 20}
!111 = !{i1 false, !99, i1 false, i2 -1}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 -32, i32 5}
!118 = !{double 0.000000e+00, double 0x41807278CFF25395}
!119 = !{!117, !120, i1 false, i2 -1}
!120 = !{double 0xC180727F0FF25395, double 2.000000e+02}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = !{i1 false, !124, i1 false, i2 0}
!124 = !{double 1.900000e+01, double 1.900000e+01}
!125 = !{i1 false, !126, i1 false, i2 0}
!126 = !{double 1.800000e+01, double 1.900000e+01}
!127 = !{i1 false, !128, i1 false, i2 0}
!128 = !{double 2.000000e+01, double 2.100000e+01}
!129 = !{!130, !131, i1 false, i2 -1}
!130 = !{!"fixp", i32 -32, i32 15}
!131 = !{double 0xC073D9094AED99C8, double 0x40E056C5CDD0C3A5}
!132 = !{!130, !133, i1 false, i2 -1}
!133 = !{double 0xC0E06FC5CDD0C3A5, double 0x40802C84A576CCE4}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 2.100000e+01, double 2.100000e+01}
!136 = distinct !{!136, !23}
!137 = !{i1 false, !138, i1 false, i2 0}
!138 = !{double 1.800000e+01, double 1.800000e+01}
!139 = distinct !{!139, !23}
!140 = !{i32 1, !74, i32 1, !50, i32 1, !83}
!141 = !{!142, !143, i1 false, i2 -1}
!142 = !{!"fixp", i32 -32, i32 19}
!143 = !{double 0xC0436DCA07F66E87, double 0x40AFFCF893FAF428}
!144 = distinct !{!144, !23}
!145 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!146 = !{i32 1, !74, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!147 = distinct !{null}
!148 = !{!149, !75, i1 false, i2 1}
!149 = !{!"fixp", i32 32, i32 27}
!150 = !{i1 false, !66, i1 false, i2 1}
!151 = !{i32 0}
!152 = !{i1 false, !68, i1 false, i2 1}
!153 = !{i32 2}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 2.000000e+01}
!156 = !{i32 3}
!157 = !{!51, !1, i1 false, i2 1}
!158 = !{i1 false, i1 false, i1 false, i2 1}
!159 = !{!78, i1 false}
!160 = !{!48, !54, i1 false, i2 1}
!161 = !{i1 false, !70, i1 false, i2 1}
!162 = !{!149, !70, i1 false, i2 1}
!163 = !{!164, !165, i1 false, i2 1}
!164 = !{!"fixp", i32 -32, i32 26}
!165 = !{double 5.000000e-02, double 1.050000e+00}
!166 = !{!167, !165, i1 false, i2 1}
!167 = !{!"fixp", i32 32, i32 30}
!168 = !{!51, !169, i1 false, i2 1}
!169 = !{double 2.500000e-02, double 5.250000e-01}
!170 = !{!171, !169, i1 false, i2 1}
!171 = !{!"fixp", i32 32, i32 29}
!172 = !{i1 false, !19}
!173 = !{!171, !174, i1 false, i2 1}
!174 = !{double 0x4010199980000000, double 0x40121999A0000000}
!175 = !{i1 false, !176}
!176 = !{i1 false, !177, i1 false, i2 0}
!177 = !{double 4.000000e+00, double 4.000000e+00}
!178 = !{!48, !49, i1 false, i2 1}
!179 = distinct !{!179, !23}
!180 = !{i1 false, !181, i1 false, i2 1}
!181 = !{double -2.000000e+01, double 0.000000e+00}
!182 = !{i1 false, !183, i1 false, i2 1}
!183 = !{double -1.900000e+01, double 0.000000e+00}
!184 = !{!164, !183, i1 false, i2 1}
!185 = !{!164, !186, i1 false, i2 1}
!186 = !{double 0xBFEE666666666666, double 0.000000e+00}
!187 = !{!188, !186, i1 false, i2 1}
!188 = !{!"fixp", i32 -32, i32 30}
!189 = !{!188, !190, i1 false, i2 1}
!190 = !{double 0x3FA99999999999A0, double 1.000000e+00}
!191 = !{i1 false, !76}
!192 = !{!43, !44, i1 false, i2 1}
!193 = distinct !{!193, !23}
!194 = !{i1 false, !195, i1 false, i2 1}
!195 = !{double 0.000000e+00, double 2.200000e+01}
!196 = !{i1 false, !197, i1 false, i2 1}
!197 = !{double 1.000000e+00, double 2.200000e+01}
!198 = distinct !{!198, !23}
!199 = !{!76, i1 false}
!200 = distinct !{!200, !23}
!201 = distinct !{!201, !23}
!202 = distinct !{!202, !23}
!203 = !{!204, !102, i1 false, i2 -1}
!204 = !{!"fixp", i32 32, i32 5}
!205 = !{!204, !206, i1 false, i2 -1}
!206 = !{double 1.024010e+03, double 0x4190B30E08CA7893}
!207 = distinct !{!207, !23}
!208 = distinct !{!208, !23}
!209 = distinct !{!209, !23}
!210 = distinct !{!210, !23}
!211 = distinct !{!211, !23}
!212 = !{i32 -1, i32 -1, i32 3, i32 -1}
!213 = !{i32 1, !74, i32 1, !74, i32 1, !42, i32 1, !83}
!214 = !{void (i32, i32, float*, i32)* @scale_2d}
!215 = !{!216, !217, i1 false, i2 -1}
!216 = !{!"fixp", i32 -32, i32 7}
!217 = !{double 1.024000e+02, double 0x41605851DFFC547A}
!218 = !{!219, !217, i1 false, i2 -1}
!219 = !{!"fixp", i32 32, i32 8}
!220 = distinct !{!220, !23}
!221 = distinct !{!221, !23}
