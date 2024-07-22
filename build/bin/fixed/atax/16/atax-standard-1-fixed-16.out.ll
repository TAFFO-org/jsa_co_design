; ModuleID = './build/bin/fixed/atax/16/atax-standard-1-fixed-16.out.ll.4.taffotmp.ll'
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
  %A.u1_31fixp = alloca [20 x [22 x i32]], align 4, !taffo.info !28
  %x.u2_30fixp = alloca [22 x i32], align 4, !taffo.info !31
  %y.u4_28fixp = alloca [22 x i32], align 4, !taffo.info !34, !taffo.target !36
  %tmp.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !37
  %arraydecay.u1_31fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !28
  %arraydecay5.u2_30fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !31
  %arraydecay6.u4_28fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u4_28fixp, i32 0, i32 0, !taffo.info !34, !taffo.target !36
  %arraydecay7.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u3_29fixp, i32 0, i32 0, !taffo.info !37
  call void @init_array.2_fixp(i32 20, i32 22, [22 x i32]* %arraydecay.u1_31fixp, i32* %arraydecay5.u2_30fixp, i32* %arraydecay6.u4_28fixp, i32* %arraydecay7.u3_29fixp), !taffo.info !40, !taffo.constinfo !41
  call void @timer_start(), !taffo.constinfo !42
  %arraydecay8.u1_31fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !28
  %arraydecay9.u2_30fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !31
  %arraydecay10.u4_28fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u4_28fixp, i32 0, i32 0, !taffo.info !34, !taffo.target !36
  %arraydecay11.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u3_29fixp, i32 0, i32 0, !taffo.info !37
  call void @kernel_atax.1_fixp(i32 20, i32 22, [22 x i32]* %arraydecay8.u1_31fixp, i32* %arraydecay9.u2_30fixp, i32* %arraydecay10.u4_28fixp, i32* %arraydecay11.u3_29fixp), !taffo.info !40, !taffo.constinfo !41
  call void @timer_stop(), !taffo.constinfo !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !43
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !45
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u4_28fixp, i32 0, i32 %i.0, !taffo.info !34, !taffo.target !36
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !34, !taffo.target !36
  %0 = uitofp i32 %u4_28fixp to float, !taffo.info !34, !taffo.target !36
  %1 = fdiv float %0, 0x41B0000000000000, !taffo.info !34, !taffo.target !36
  %arrayidx12 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx12, align 4, !taffo.info !47, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !48, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !51
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !25 !taffo.funinfo !52 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !57, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !55
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !51
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !59
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.1_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u1_31fixp, i32* noundef %x.u2_30fixp, i32* noundef %y.u4_28fixp, i32* noundef %tmp.u3_29fixp) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !34
  store i32 0, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !66, !taffo.constinfo !67
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !45
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !55
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.1, !taffo.info !37
  store i32 0, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !66, !taffo.constinfo !67
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !45
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !55
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.1, !taffo.info !37
  %u3_29fixp = load i32, i32* %arrayidx8.u3_29fixp, align 4, !taffo.info !37
  %arrayidx9.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !28
  %arrayidx10.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx9.u1_31fixp, i32 0, i32 %j.0, !taffo.info !28
  %u1_31fixp = load i32, i32* %arrayidx10.u1_31fixp, align 4, !taffo.info !28
  %arrayidx11.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %j.0, !taffo.info !31
  %u2_30fixp = load i32, i32* %arrayidx11.u2_30fixp, align 4, !taffo.info !31
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !28
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !31
  %2 = ashr i32 %0, 2, !taffo.info !28
  %3 = ashr i32 %1, 1, !taffo.info !31
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 28), !taffo.info !69
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !72
  %add.u3_29fixp = add i32 %u3_29fixp, %mul.u3_29fixp, !taffo.info !73
  %arrayidx12.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.1, !taffo.info !37
  store i32 %add.u3_29fixp, i32* %arrayidx12.u3_29fixp, align 4, !taffo.info !75
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !76

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !45
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !55
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %j.1, !taffo.info !34
  %u4_28fixp = load i32, i32* %arrayidx19.u4_28fixp, align 4, !taffo.info !34
  %arrayidx20.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !28
  %arrayidx21.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u1_31fixp, i32 0, i32 %j.1, !taffo.info !28
  %u1_31fixp2 = load i32, i32* %arrayidx21.u1_31fixp, align 4, !taffo.info !28
  %arrayidx22.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.1, !taffo.info !37
  %u3_29fixp1 = load i32, i32* %arrayidx22.u3_29fixp, align 4, !taffo.info !37
  %5 = lshr i32 %u1_31fixp2, 1, !taffo.info !28
  %6 = lshr i32 %u3_29fixp1, 1, !taffo.info !37
  %7 = ashr i32 %5, 2, !taffo.info !28
  %8 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %6, i32 28), !taffo.info !77
  %mul23.u3_29fixp = shl i32 %8, 1, !taffo.info !79
  %9 = lshr i32 %mul23.u3_29fixp, 1, !taffo.info !79
  %add24.u4_28fixp = add i32 %u4_28fixp, %9, !taffo.info !80
  %arrayidx25.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %j.1, !taffo.info !34
  store i32 %add24.u4_28fixp, i32* %arrayidx25.u4_28fixp, align 4, !taffo.info !47
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !82

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !83

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u1_31fixp, i32* noundef %x.u2_30fixp, i32* noundef %y.u4_28fixp, i32* noundef %tmp.u3_29fixp) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !84 {
entry:
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !85
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !87, !taffo.initweight !89
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90, !taffo.initweight !91
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !87, !taffo.initweight !92

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !93
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !93
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !85
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !94
  %div.u2_30fixp = shl i32 %2, 4, !taffo.info !96
  %3 = lshr i32 -2147483648, 1
  %add.u2_30fixp = add i32 %3, %div.u2_30fixp, !taffo.info !97, !taffo.constinfo !99
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.0, !taffo.info !100
  store i32 %add.u2_30fixp, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !66
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !101
  store i32 0, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !66, !taffo.constinfo !67
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !102, !taffo.initweight !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !103

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !87, !taffo.initweight !89
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.info !90, !taffo.initweight !91
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.info !87, !taffo.initweight !92

for.body10:                                       ; preds = %for.cond7
  %arrayidx11.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.1, !taffo.info !104
  store i32 0, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !66, !taffo.constinfo !67
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.info !87, !taffo.initweight !89
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.info !90, !taffo.initweight !91
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.info !87, !taffo.initweight !92

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.info !105, !taffo.initweight !91
  %rem = srem i32 %add16, %n, !taffo.info !107, !taffo.initweight !92
  %conv17.u5_27fixp = shl i32 %rem, 27, !taffo.info !109
  %mul = mul nsw i32 5, %m, !taffo.info !110, !taffo.constinfo !21
  %conv18.u7_25fixp = shl i32 %mul, 25, !taffo.info !112, !taffo.constinfo !21
  %4 = lshr i32 %conv17.u5_27fixp, 1, !taffo.info !109
  %5 = lshr i32 %conv18.u7_25fixp, 1, !taffo.info !112, !taffo.constinfo !21
  %6 = ashr i32 %4, 2, !taffo.info !109
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %5, i32 24), !taffo.info !114
  %div19.u1_31fixp = shl i32 %7, 7, !taffo.info !28
  %arrayidx20.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !116
  %arrayidx21.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u1_31fixp, i32 0, i32 %j.0, !taffo.info !116
  store i32 %div19.u1_31fixp, i32* %arrayidx21.u1_31fixp, align 4, !taffo.info !66
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.info !102, !taffo.initweight !91, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !117

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.info !102, !taffo.initweight !91, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !118

for.end27:                                        ; preds = %for.cond7
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
!1 = !{double 0.000000e+00, double 7.691500e+00}
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
!29 = !{!"fixp", i32 32, i32 31}
!30 = !{double 0.000000e+00, double 2.100000e-01}
!31 = !{!32, !33, i1 false, i2 -1}
!32 = !{!"fixp", i32 32, i32 30}
!33 = !{double 1.000000e+00, double 0x3FFF45D0FA58F712}
!34 = !{!35, !1, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 28}
!36 = !{!"y"}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 32, i32 29}
!39 = !{double 0.000000e+00, double 3.815000e+00}
!40 = !{i1 false, !30, i1 false, i2 -1}
!41 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!42 = !{i1 false}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 0.000000e+00, double 2.300000e+01}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.000000e+00}
!47 = !{i1 false, !1, i1 false, i2 -1}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 1.000000e+00, double 2.300000e+01}
!50 = distinct !{!50, !23}
!51 = !{i1 false, i1 false, i1 false}
!52 = !{i32 1, !53, i32 1, !0}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 2.200000e+01, double 2.200000e+01}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 1.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 0.000000e+00}
!59 = !{i1 false, i1 false, i1 false, i1 false}
!60 = distinct !{!60, !23}
!61 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!62 = !{i32 1, !63, i32 1, !53, i32 1, !28, i32 1, !31, i32 1, !34, i32 1, !37}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 2.000000e+01, double 2.000000e+01}
!65 = distinct !{null}
!66 = !{i1 false, i1 false, i1 false, i2 1}
!67 = !{!57, i1 false}
!68 = distinct !{!68, !23}
!69 = !{!70, !71, i1 false, i2 -1}
!70 = !{!"fixp", i32 -32, i32 28}
!71 = !{double 0.000000e+00, double 0x3FDA44E2BDCFD9C7}
!72 = !{!38, !71, i1 false, i2 -1}
!73 = !{!38, !74, i1 false, i2 -1}
!74 = !{double 0.000000e+00, double 0x4010E6DD8805F35F}
!75 = !{i1 false, !39, i1 false, i2 -1}
!76 = distinct !{!76, !23}
!77 = !{!70, !78, i1 false, i2 -1}
!78 = !{double 0.000000e+00, double 0x3FE9A305532617C1}
!79 = !{!38, !78, i1 false, i2 -1}
!80 = !{!35, !81, i1 false, i2 -1}
!81 = !{double 0.000000e+00, double 8.492650e+00}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = distinct !{null}
!85 = !{!86, !54, i1 false, i2 1}
!86 = !{!"fixp", i32 32, i32 27}
!87 = !{i1 false, !88, i1 false, i2 -1}
!88 = !{double 0.000000e+00, double 2.200000e+01}
!89 = !{i32 0}
!90 = !{i1 false, !46, i1 false, i2 -1}
!91 = !{i32 2}
!92 = !{i32 3}
!93 = !{!86, !88, i1 false, i2 -1}
!94 = !{!95, !46, i1 false, i2 1}
!95 = !{!"fixp", i32 -32, i32 26}
!96 = !{!32, !46, i1 false, i2 1}
!97 = !{!32, !98, i1 false, i2 1}
!98 = !{double 1.000000e+00, double 2.000000e+00}
!99 = !{!55, i1 false}
!100 = !{!32, !33, i1 false, i2 1}
!101 = !{!35, !1, i1 false, i2 1}
!102 = !{i1 false, !49, i1 false, i2 -1}
!103 = distinct !{!103, !23}
!104 = !{!38, !39, i1 false, i2 1}
!105 = !{i1 false, !106, i1 false, i2 -1}
!106 = !{double 0.000000e+00, double 4.400000e+01}
!107 = !{i1 false, !108, i1 false, i2 -1}
!108 = !{double 0.000000e+00, double 2.100000e+01}
!109 = !{!86, !108, i1 false, i2 -1}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 1.000000e+02, double 1.000000e+02}
!112 = !{!113, !111, i1 false, i2 1}
!113 = !{!"fixp", i32 32, i32 25}
!114 = !{!115, !30, i1 false, i2 -1}
!115 = !{!"fixp", i32 -32, i32 24}
!116 = !{!29, !30, i1 false, i2 1}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
