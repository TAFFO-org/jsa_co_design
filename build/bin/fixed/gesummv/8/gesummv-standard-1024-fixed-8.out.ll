; ModuleID = './build/bin/fixed/gesummv/8/gesummv-standard-1024-fixed-8.out.ll.4.taffotmp.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [16 x float] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.equivalentChild !29 {
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
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.equivalentChild !33 {
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
  br label %for.cond1, !llvm.loop !34

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !35

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !36 !taffo.funinfo !37 {
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
  br label %for.cond4, !llvm.loop !38

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !39

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !40

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !41 !taffo.funinfo !41 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !41 !taffo.funinfo !41 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !42 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !43
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !46
  %A.u10_22fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %B.u10_22fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !48
  %tmp.u23_9fixp = alloca [16 x i32], align 4, !taffo.info !51
  %x.u10_22fixp = alloca [16 x i32], align 4, !taffo.info !48
  %y.u24_8fixp = alloca [16 x i32], align 4, !taffo.info !54, !taffo.target !56
  %arraydecay.u10_22fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay8.u10_22fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay9.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay10.u23_9fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u23_9fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay11.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u24_8fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @init_array.7_fixp(i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u10_22fixp, [16 x i32]* %arraydecay8.u10_22fixp, i32* %arraydecay9.u10_22fixp, i32* %arraydecay10.u23_9fixp, i32* %arraydecay11.u24_8fixp), !taffo.info !57, !taffo.constinfo !58
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 1024), !taffo.info !57, !taffo.constinfo !59
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 1024), !taffo.info !60, !taffo.constinfo !59
  %arraydecay12.u10_22fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %u10_22fixp2 = bitcast [16 x i32]* %arraydecay12.u10_22fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u10_22fixp2, i32 1024), !taffo.info !61, !taffo.constinfo !62
  %arraydecay13.u10_22fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %u10_22fixp = bitcast [16 x i32]* %arraydecay13.u10_22fixp to i32*, !taffo.info !48
  call void @scale_2d.8_fixp(i32 16, i32 16, i32* %u10_22fixp, i32 1024), !taffo.info !61, !taffo.constinfo !62
  %arraydecay14.u23_9fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u23_9fixp, i32 0, i32 0, !taffo.info !51
  call void @scale_1d.3_fixp(i32 16, i32* %arraydecay14.u23_9fixp, i32 1024), !taffo.info !63, !taffo.constinfo !64
  %arraydecay15.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u10_22fixp, i32 0, i32 0, !taffo.info !48
  call void @scale_1d.4_fixp(i32 16, i32* %arraydecay15.u10_22fixp, i32 1024), !taffo.info !61, !taffo.constinfo !64
  %arraydecay16.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u24_8fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @scale_1d.6_fixp(i32 16, i32* %arraydecay16.u24_8fixp, i32 1024), !taffo.info !65, !taffo.constinfo !64, !taffo.target !56
  call void @timer_start(), !taffo.constinfo !66
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !43
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !46
  %arraydecay17.u10_22fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay18.u10_22fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay19.u23_9fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u23_9fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay20.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u10_22fixp, i32 0, i32 0, !taffo.info !48
  %arraydecay21.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u24_8fixp, i32 0, i32 0, !taffo.info !54, !taffo.target !56
  call void @kernel_gesummv.5_fixp(i32 16, i32 %u2_30fixp, i32 %u2_30fixp1, [16 x i32]* %arraydecay17.u10_22fixp, [16 x i32]* %arraydecay18.u10_22fixp, i32* %arraydecay19.u23_9fixp, i32* %arraydecay20.u10_22fixp, i32* %arraydecay21.u24_8fixp), !taffo.info !57, !taffo.constinfo !58
  call void @timer_stop(), !taffo.constinfo !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u24_8fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u24_8fixp, i32 0, i32 %i.0, !taffo.info !54, !taffo.target !56
  %u24_8fixp = load i32, i32* %arrayidx.u24_8fixp, align 4, !taffo.info !54, !taffo.target !56
  %0 = uitofp i32 %u24_8fixp to float, !taffo.info !54, !taffo.target !56
  %1 = fdiv float %0, 2.560000e+02, !taffo.info !54, !taffo.target !56
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx22, align 4, !taffo.info !65, !taffo.target !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !59
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !79, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !77
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !64
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.sourceFunction !86 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u23_9fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u23_9fixp = getelementptr inbounds i32, i32* %val.u23_9fixp, i32 %i.0, !taffo.info !51
  %u23_9fixp = load i32, i32* %arrayidx.u23_9fixp, align 4, !taffo.info !51
  %0 = uitofp i32 %u23_9fixp to float, !taffo.info !51
  %1 = fdiv float %0, 5.120000e+02, !taffo.info !51
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !90
  %2 = uitofp i32 %conv.u11_21fixp to float, !taffo.info !90
  %3 = fdiv float %2, 0x4140000000000000, !taffo.info !90
  %mul.1flp = fmul float %1, %3, !taffo.info !92
  %arrayidx1.u23_9fixp = getelementptr inbounds i32, i32* %val.u23_9fixp, i32 %i.0, !taffo.info !51
  %4 = fmul float 5.120000e+02, %mul.1flp, !taffo.info !92
  %5 = fptoui float %4 to i32, !taffo.info !92
  store i32 %5, i32* %arrayidx1.u23_9fixp, align 4, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6_fixp(i32 noundef %n, i32* noundef %val.u24_8fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !96 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u24_8fixp = getelementptr inbounds i32, i32* %val.u24_8fixp, i32 %i.0, !taffo.info !54
  %u24_8fixp = load i32, i32* %arrayidx.u24_8fixp, align 4, !taffo.info !54
  %0 = uitofp i32 %u24_8fixp to float, !taffo.info !54
  %1 = fdiv float %0, 2.560000e+02, !taffo.info !54
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !90
  %2 = uitofp i32 %conv.u11_21fixp to float, !taffo.info !90
  %3 = fdiv float %2, 0x4140000000000000, !taffo.info !90
  %mul.1flp = fmul float %1, %3, !taffo.info !97
  %arrayidx1.u24_8fixp = getelementptr inbounds i32, i32* %val.u24_8fixp, i32 %i.0, !taffo.info !54
  %4 = fmul float 2.560000e+02, %mul.1flp, !taffo.info !97
  %5 = fptoui float %4 to i32, !taffo.info !97
  store i32 %5, i32* %arrayidx1.u24_8fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !100

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u10_22fixp, i32 noundef %factor) #0 !taffo.initweight !87 !taffo.funinfo !101 !taffo.sourceFunction !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %i.0, !taffo.info !48
  %u10_22fixp = load i32, i32* %arrayidx.u10_22fixp, align 4, !taffo.info !48
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !90
  %0 = lshr i32 %u10_22fixp, 1, !taffo.info !48
  %1 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !90
  %2 = ashr i32 %0, 10, !taffo.info !48
  %3 = ashr i32 %1, 9, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 11), !taffo.info !102
  %mul.u20_12fixp = shl i32 %4, 1, !taffo.info !105
  %arrayidx1.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %i.0, !taffo.info !48
  %5 = shl i32 %mul.u20_12fixp, 10, !taffo.info !105
  store i32 %5, i32* %arrayidx1.u10_22fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u10_22fixp, [16 x i32]* noundef %B.u10_22fixp, i32* noundef %x.u10_22fixp, i32* noundef %tmp.u23_9fixp, i32* noundef %y.u24_8fixp) #0 !taffo.initweight !108 !taffo.funinfo !109 !taffo.sourceFunction !110 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !57, !taffo.constinfo !111
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !60, !taffo.constinfo !113
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !116, !taffo.initweight !117
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !118, !taffo.initweight !119
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !120, !taffo.initweight !122

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !123, !taffo.initweight !119
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !125
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !127
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !125
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !127
  %2 = ashr i32 %0, 1, !taffo.info !125
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !129
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !132
  %arrayidx.u10_22fixp = getelementptr inbounds i32, i32* %x.u10_22fixp, i32 %i.0, !taffo.info !134
  %4 = lshr i32 %div.u1_31fixp, 9, !taffo.info !132
  store i32 %4, i32* %arrayidx.u10_22fixp, align 4, !taffo.info !135
  %arrayidx4.u24_8fixp = getelementptr inbounds i32, i32* %y.u24_8fixp, i32 %i.0, !taffo.info !136
  store i32 0, i32* %arrayidx4.u24_8fixp, align 4, !taffo.info !135, !taffo.constinfo !137
  %arrayidx5.u23_9fixp = getelementptr inbounds i32, i32* %tmp.u23_9fixp, i32 %i.0, !taffo.info !138
  store i32 0, i32* %arrayidx5.u23_9fixp, align 4, !taffo.info !135, !taffo.constinfo !137
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !116, !taffo.initweight !117
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !118, !taffo.initweight !119
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !120, !taffo.initweight !122

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !139, !taffo.initweight !119
  %add = add nsw i32 %mul, 1, !taffo.info !141, !taffo.initweight !122, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !123, !taffo.initweight !143
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !125
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !127
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !125
  %6 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !127
  %7 = ashr i32 %5, 1, !taffo.info !125
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 26), !taffo.info !129
  %div13.u1_31fixp = shl i32 %8, 5, !taffo.info !132
  %arrayidx14.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u10_22fixp, i32 %i.0, !taffo.info !134
  %arrayidx15.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx14.u10_22fixp, i32 0, i32 %j.0, !taffo.info !134
  %9 = lshr i32 %div13.u1_31fixp, 9, !taffo.info !132
  store i32 %9, i32* %arrayidx15.u10_22fixp, align 4, !taffo.info !135
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !139, !taffo.initweight !119
  %add17 = add nsw i32 %mul16, 2, !taffo.info !144, !taffo.initweight !122, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !123, !taffo.initweight !143
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !125
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !127
  %10 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !125
  %11 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !127
  %12 = ashr i32 %10, 1, !taffo.info !125
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 26), !taffo.info !129
  %div21.u1_31fixp = shl i32 %13, 5, !taffo.info !132
  %arrayidx22.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u10_22fixp, i32 %i.0, !taffo.info !134
  %arrayidx23.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u10_22fixp, i32 0, i32 %j.0, !taffo.info !134
  %14 = lshr i32 %div21.u1_31fixp, 9, !taffo.info !132
  store i32 %14, i32* %arrayidx23.u10_22fixp, align 4, !taffo.info !135
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !146, !taffo.initweight !119, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !147

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !146, !taffo.initweight !119, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !148

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u10_22fixp, [16 x i32]* noundef %B.u10_22fixp, i32* noundef %tmp.u23_9fixp, i32* noundef %x.u10_22fixp, i32* noundef %y.u24_8fixp) #0 !taffo.initweight !149 !taffo.funinfo !150 !taffo.sourceFunction !151 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx.u23_9fixp = getelementptr inbounds i32, i32* %tmp.u23_9fixp, i32 %i.0, !taffo.info !51
  store i32 0, i32* %arrayidx.u23_9fixp, align 4, !taffo.info !135, !taffo.constinfo !137
  %arrayidx1.u24_8fixp = getelementptr inbounds i32, i32* %y.u24_8fixp, i32 %i.0, !taffo.info !54
  store i32 0, i32* %arrayidx1.u24_8fixp, align 4, !taffo.info !135, !taffo.constinfo !137
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !77
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u10_22fixp, i32 %i.0, !taffo.info !48
  %arrayidx6.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx5.u10_22fixp, i32 0, i32 %j.0, !taffo.info !48
  %u10_22fixp4 = load i32, i32* %arrayidx6.u10_22fixp, align 4, !taffo.info !48
  %arrayidx7.u10_22fixp = getelementptr inbounds i32, i32* %x.u10_22fixp, i32 %j.0, !taffo.info !48
  %u10_22fixp = load i32, i32* %arrayidx7.u10_22fixp, align 4, !taffo.info !48
  %0 = lshr i32 %u10_22fixp4, 1, !taffo.info !48
  %1 = lshr i32 %u10_22fixp, 1, !taffo.info !48
  %2 = ashr i32 %0, 10, !taffo.info !48
  %3 = ashr i32 %1, 10, !taffo.info !48
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 11), !taffo.info !152
  %mul.u20_12fixp = shl i32 %4, 1, !taffo.info !154
  %arrayidx8.u23_9fixp = getelementptr inbounds i32, i32* %tmp.u23_9fixp, i32 %i.0, !taffo.info !51
  %u23_9fixp = load i32, i32* %arrayidx8.u23_9fixp, align 4, !taffo.info !51
  %5 = lshr i32 %mul.u20_12fixp, 3, !taffo.info !154
  %add.u23_9fixp = add i32 %5, %u23_9fixp, !taffo.info !155
  %arrayidx9.u23_9fixp = getelementptr inbounds i32, i32* %tmp.u23_9fixp, i32 %i.0, !taffo.info !51
  store i32 %add.u23_9fixp, i32* %arrayidx9.u23_9fixp, align 4, !taffo.info !63
  %arrayidx10.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u10_22fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u10_22fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u10_22fixp, i32 0, i32 %j.0, !taffo.info !48
  %u10_22fixp5 = load i32, i32* %arrayidx11.u10_22fixp, align 4, !taffo.info !48
  %arrayidx12.u10_22fixp = getelementptr inbounds i32, i32* %x.u10_22fixp, i32 %j.0, !taffo.info !48
  %u10_22fixp2 = load i32, i32* %arrayidx12.u10_22fixp, align 4, !taffo.info !48
  %6 = lshr i32 %u10_22fixp5, 1, !taffo.info !48
  %7 = lshr i32 %u10_22fixp2, 1, !taffo.info !48
  %8 = ashr i32 %6, 10, !taffo.info !48
  %9 = ashr i32 %7, 10, !taffo.info !48
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 11), !taffo.info !152
  %mul13.u20_12fixp = shl i32 %10, 1, !taffo.info !154
  %arrayidx14.u24_8fixp = getelementptr inbounds i32, i32* %y.u24_8fixp, i32 %i.0, !taffo.info !54
  %u24_8fixp = load i32, i32* %arrayidx14.u24_8fixp, align 4, !taffo.info !54
  %11 = lshr i32 %mul13.u20_12fixp, 4, !taffo.info !154
  %add15.u24_8fixp = add i32 %11, %u24_8fixp, !taffo.info !157
  %arrayidx16.u24_8fixp = getelementptr inbounds i32, i32* %y.u24_8fixp, i32 %i.0, !taffo.info !54
  store i32 %add15.u24_8fixp, i32* %arrayidx16.u24_8fixp, align 4, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !159

for.end:                                          ; preds = %for.cond2
  %arrayidx17.u23_9fixp = getelementptr inbounds i32, i32* %tmp.u23_9fixp, i32 %i.0, !taffo.info !51
  %u23_9fixp1 = load i32, i32* %arrayidx17.u23_9fixp, align 4, !taffo.info !51
  %12 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !43
  %13 = lshr i32 %u23_9fixp1, 1, !taffo.info !51
  %14 = ashr i32 %12, 23, !taffo.info !43
  %15 = ashr i32 %13, 2, !taffo.info !51
  %16 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 6), !taffo.info !160
  %mul18.u25_7fixp = shl i32 %16, 1, !taffo.info !163
  %arrayidx19.u24_8fixp = getelementptr inbounds i32, i32* %y.u24_8fixp, i32 %i.0, !taffo.info !54
  %u24_8fixp3 = load i32, i32* %arrayidx19.u24_8fixp, align 4, !taffo.info !54
  %17 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !46
  %18 = lshr i32 %u24_8fixp3, 1, !taffo.info !54
  %19 = ashr i32 %17, 23, !taffo.info !46
  %20 = ashr i32 %18, 1, !taffo.info !54
  %21 = call i32 @llvm.smul.fix.i32(i32 %19, i32 %20, i32 6), !taffo.info !165
  %mul20.u25_7fixp = shl i32 %21, 1, !taffo.info !167
  %add21.u25_7fixp = add i32 %mul18.u25_7fixp, %mul20.u25_7fixp, !taffo.info !168
  %arrayidx22.u24_8fixp = getelementptr inbounds i32, i32* %y.u24_8fixp, i32 %i.0, !taffo.info !54
  %22 = shl i32 %add21.u25_7fixp, 1, !taffo.info !168
  store i32 %22, i32* %arrayidx22.u24_8fixp, align 4, !taffo.info !65
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !170

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u10_22fixp, i32 noundef %factor) #0 !taffo.initweight !171 !taffo.funinfo !172 !taffo.sourceFunction !173 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !69
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !77
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %0, !taffo.info !48
  %arrayidx4.u10_22fixp = getelementptr inbounds i32, i32* %arrayidx.u10_22fixp, i32 %j.0, !taffo.info !48
  %u10_22fixp = load i32, i32* %arrayidx4.u10_22fixp, align 4, !taffo.info !48
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !90
  %1 = lshr i32 %u10_22fixp, 1, !taffo.info !48
  %2 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !90
  %3 = ashr i32 %1, 10, !taffo.info !48
  %4 = ashr i32 %2, 9, !taffo.info !90
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 11), !taffo.info !102
  %mul.u20_12fixp = shl i32 %5, 1, !taffo.info !105
  %6 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx5.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %6, !taffo.info !48
  %arrayidx6.u10_22fixp = getelementptr inbounds i32, i32* %arrayidx5.u10_22fixp, i32 %j.0, !taffo.info !48
  %7 = shl i32 %mul.u20_12fixp, 10, !taffo.info !105
  store i32 %7, i32* %arrayidx6.u10_22fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !174

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !175

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
!1 = !{double 0.000000e+00, double 0x4166A66680000000}
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
!29 = distinct !{null, null, null}
!30 = distinct !{!30, !23}
!31 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!33 = distinct !{null, null}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = !{}
!42 = !{i1 true}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 32, i32 30}
!45 = !{double 1.500000e+00, double 1.500000e+00}
!46 = !{!44, !47, i1 false, i2 -1}
!47 = !{double 1.200000e+00, double 1.200000e+00}
!48 = !{!49, !50, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 22}
!50 = !{double 0.000000e+00, double 9.600000e+02}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 9}
!53 = !{double 0.000000e+00, double 0x4151A00000000000}
!54 = !{!55, !1, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 8}
!56 = !{!"y"}
!57 = !{i1 false, !45, i1 false, i2 -1}
!58 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, i1 false, i1 false}
!60 = !{i1 false, !47, i1 false, i2 -1}
!61 = !{i1 false, !50, i1 false, i2 -1}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = !{i1 false, !53, i1 false, i2 -1}
!64 = !{i1 false, i1 false, i1 false, i1 false}
!65 = !{i1 false, !1, i1 false, i2 -1}
!66 = !{i1 false}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.700000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 1.700000e+01}
!73 = distinct !{!73, !23}
!74 = !{i32 1, !75, i32 1, !0}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.600000e+01, double 1.600000e+01}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.000000e+00, double 1.000000e+00}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 0.000000e+00}
!81 = distinct !{!81, !23}
!82 = !{i32 1, i32 -1}
!83 = !{i32 1, !43, i32 1, !84}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.024000e+03, double 1.024000e+03}
!86 = !{void (float*, i32)* @scale_scalar}
!87 = !{i32 -1, i32 2, i32 -1}
!88 = !{i32 1, !75, i32 1, !51, i32 1, !84}
!89 = !{void (i32, float*, i32)* @scale_1d}
!90 = !{!91, !85, i1 false, i2 1}
!91 = !{!"fixp", i32 32, i32 21}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"float", i32 1, double 0x41F1A00000000000}
!94 = !{double 0.000000e+00, double 0x41F1A00000000000}
!95 = distinct !{!95, !23}
!96 = !{i32 1, !75, i32 1, !54, i32 1, !84}
!97 = !{!98, !99, i1 false, i2 -1}
!98 = !{!"float", i32 1, double 0x4206A66680000000}
!99 = !{double 0.000000e+00, double 0x4206A66680000000}
!100 = distinct !{!100, !23}
!101 = !{i32 1, !75, i32 1, !48, i32 1, !84}
!102 = !{!103, !104, i1 false, i2 -1}
!103 = !{!"fixp", i32 -32, i32 11}
!104 = !{double 0.000000e+00, double 9.830400e+05}
!105 = !{!106, !104, i1 false, i2 -1}
!106 = !{!"fixp", i32 32, i32 12}
!107 = distinct !{!107, !23}
!108 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!109 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !54}
!110 = distinct !{null}
!111 = !{!112, i1 false}
!112 = !{i1 false, !45, i1 false, i2 0}
!113 = !{!114, i1 false}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!116 = !{i1 false, !68, i1 false, i2 1}
!117 = !{i32 0}
!118 = !{i1 false, !70, i1 false, i2 1}
!119 = !{i32 2}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 0.000000e+00, double 1.600000e+01}
!122 = !{i32 3}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 0.000000e+00, double 1.500000e+01}
!125 = !{!126, !124, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 28}
!127 = !{!128, !76, i1 false, i2 1}
!128 = !{!"fixp", i32 32, i32 27}
!129 = !{!130, !131, i1 false, i2 1}
!130 = !{!"fixp", i32 -32, i32 26}
!131 = !{double 0.000000e+00, double 9.375000e-01}
!132 = !{!133, !131, i1 false, i2 1}
!133 = !{!"fixp", i32 32, i32 31}
!134 = !{!49, !50, i1 false, i2 1}
!135 = !{i1 false, i1 false, i1 false, i2 1}
!136 = !{!55, !1, i1 false, i2 1}
!137 = !{!79, i1 false}
!138 = !{!52, !53, i1 false, i2 1}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 2.560000e+02}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 1.000000e+00, double 2.570000e+02}
!143 = !{i32 4}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 2.000000e+00, double 2.580000e+02}
!146 = !{i1 false, !72, i1 false, i2 1}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
!149 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!150 = !{i32 1, !75, i32 1, !43, i32 1, !46, i32 1, !48, i32 1, !48, i32 1, !51, i32 1, !48, i32 1, !54}
!151 = distinct !{null}
!152 = !{!103, !153, i1 false, i2 -1}
!153 = !{double 0.000000e+00, double 9.216000e+05}
!154 = !{!106, !153, i1 false, i2 -1}
!155 = !{!52, !156, i1 false, i2 -1}
!156 = !{double 0.000000e+00, double 0x4155240000000000}
!157 = !{!55, !158, i1 false, i2 -1}
!158 = !{double 0.000000e+00, double 0x4168686680000000}
!159 = distinct !{!159, !23}
!160 = !{!161, !162, i1 false, i2 -1}
!161 = !{!"fixp", i32 -32, i32 6}
!162 = !{double 0.000000e+00, double 0x415A700000000000}
!163 = !{!164, !162, i1 false, i2 -1}
!164 = !{!"fixp", i32 32, i32 7}
!165 = !{!161, !166, i1 false, i2 -1}
!166 = !{double 0.000000e+00, double 0x416B2E1499999999}
!167 = !{!164, !166, i1 false, i2 -1}
!168 = !{!164, !169, i1 false, i2 -1}
!169 = !{double 0.000000e+00, double 0x4174330A4CCCCCCC}
!170 = distinct !{!170, !23}
!171 = !{i32 -1, i32 -1, i32 3, i32 -1}
!172 = !{i32 1, !75, i32 1, !75, i32 1, !48, i32 1, !84}
!173 = !{void (i32, i32, float*, i32)* @scale_2d}
!174 = distinct !{!174, !23}
!175 = distinct !{!175, !23}
