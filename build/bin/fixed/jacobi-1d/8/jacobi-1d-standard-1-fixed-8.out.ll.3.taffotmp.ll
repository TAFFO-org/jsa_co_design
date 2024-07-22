; ModuleID = './build/bin/fixed/jacobi-1d/8/jacobi-1d-standard-1-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [51 x i8] c"target('A') scalar(range(0.133333,1.066667) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(0.2,1.133333) final)\00", section "llvm.metadata", !taffo.info !4
@A_float = dso_local global [15 x float] zeroinitializer, align 4, !taffo.info !6
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata", !taffo.info !4
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !21
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !24
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.start !33 {
entry:
  %A = alloca [15 x float], align 4, !taffo.initweight !34, !taffo.target !35, !taffo.info !36
  %B = alloca [15 x float], align 4, !taffo.initweight !34, !taffo.info !38
  %A1 = bitcast [15 x float]* %A to i8*, !taffo.initweight !40, !taffo.target !35, !taffo.info !36
  %B2 = bitcast [15 x float]* %B to i8*, !taffo.initweight !40, !taffo.info !38
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !40, !taffo.target !35, !taffo.info !36
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !40, !taffo.info !38
  call void @init_array.2(i32 noundef 15, float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.initweight !41, !taffo.target !35, !taffo.info !36, !taffo.originalCall !42, !taffo.constinfo !43
  call void @timer_start(), !taffo.constinfo !44
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !40, !taffo.target !35, !taffo.info !36
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !40, !taffo.info !38
  call void @kernel_jacobi_1d.1(i32 noundef 10, i32 noundef 15, float* noundef %arraydecay4, float* noundef %arraydecay5), !taffo.initweight !41, !taffo.target !35, !taffo.info !36, !taffo.originalCall !45, !taffo.constinfo !46
  call void @timer_stop(), !taffo.constinfo !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 %i.0, !taffo.initweight !40, !taffo.target !35, !taffo.info !36
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !41, !taffo.target !35, !taffo.info !36
  %arrayidx6 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %i.0, !taffo.info !6
  store float %0, float* %arrayidx6, align 4, !taffo.initweight !51, !taffo.target !35, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 15, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0)), !taffo.constinfo !55
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !56 !taffo.funinfo !57 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !58 !taffo.funinfo !59 !taffo.equivalentChild !60 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !41, !taffo.info !61
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !51, !taffo.info !61

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !41, !taffo.info !61
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !51, !taffo.info !61, !taffo.constinfo !63
  %conv2 = sitofp i32 %n to float
  %div = fdiv float %add, %conv2, !taffo.initweight !64, !taffo.info !61
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.initweight !41, !taffo.info !65
  store float %div, float* %arrayidx, align 4, !taffo.initweight !51, !taffo.info !65
  %conv3 = sitofp i32 %i.0 to float, !taffo.initweight !41, !taffo.info !61
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !51, !taffo.info !61, !taffo.constinfo !66
  %conv5 = sitofp i32 %n to float
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !64, !taffo.info !61
  %arrayidx7 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.initweight !41, !taffo.info !65
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !51, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !41, !taffo.info !61, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !70 !taffo.funinfo !71 !taffo.equivalentChild !72 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ]
  %cmp = icmp slt i32 %t.0, %tsteps
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %sub = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds float, float* %A, i32 %sub4
  %0 = load float, float* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds float, float* %A, i32 %i.0
  %1 = load float, float* %arrayidx5, align 4
  %add = fadd float %0, %1
  %add6 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx7 = getelementptr inbounds float, float* %A, i32 %add6
  %2 = load float, float* %arrayidx7, align 4
  %add8 = fadd float %add, %2
  %conv = fpext float %add8 to double
  %mul = fmul double 3.333300e-01, %conv, !taffo.constinfo !73
  %conv9 = fptrunc double %mul to float
  %arrayidx10 = getelementptr inbounds float, float* %B, i32 %i.0
  store float %conv9, float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !76

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ]
  %sub12 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp13 = icmp slt i32 %i.1, %sub12
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds float, float* %B, i32 %sub16
  %3 = load float, float* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds float, float* %B, i32 %i.1
  %4 = load float, float* %arrayidx18, align 4
  %add19 = fadd float %3, %4
  %add20 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  %arrayidx21 = getelementptr inbounds float, float* %B, i32 %add20
  %5 = load float, float* %arrayidx21, align 4
  %add22 = fadd float %add19, %5
  %conv23 = fpext float %add22 to double
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.constinfo !73
  %conv25 = fptrunc double %mul24 to float
  %arrayidx26 = getelementptr inbounds float, float* %A, i32 %i.1
  store float %conv25, float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !77

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !78

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !31 !taffo.funinfo !79 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !82
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !84, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !82
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !55
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !43
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !82, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.1(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !45 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ], !taffo.info !49
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !82
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ], !taffo.info !89
  %sub = sub nsw i32 %n, 1, !taffo.info !91, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !82
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.info !84, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds float, float* %A, i32 %sub4, !taffo.initweight !93, !taffo.info !36
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !94, !taffo.info !36
  %arrayidx5 = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.initweight !93, !taffo.info !36
  %1 = load float, float* %arrayidx5, align 4, !taffo.initweight !94, !taffo.info !36
  %add = fadd float %0, %1, !taffo.initweight !95, !taffo.info !96
  %add6 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx7 = getelementptr inbounds float, float* %A, i32 %add6, !taffo.initweight !93, !taffo.info !36
  %2 = load float, float* %arrayidx7, align 4, !taffo.initweight !94, !taffo.info !36
  %add8 = fadd float %add, %2, !taffo.initweight !95, !taffo.info !98
  %conv = fpext float %add8 to double, !taffo.initweight !100, !taffo.info !98
  %mul = fmul double 3.333300e-01, %conv, !taffo.initweight !101, !taffo.info !102, !taffo.constinfo !73
  %conv9 = fptrunc double %mul to float, !taffo.initweight !104, !taffo.info !105
  %arrayidx10 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.initweight !93, !taffo.info !38
  store float %conv9, float* %arrayidx10, align 4, !taffo.initweight !94, !taffo.info !38
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !107

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !89
  %sub12 = sub nsw i32 %n, 1, !taffo.info !91, !taffo.constinfo !27
  %cmp13 = icmp slt i32 %i.1, %sub12, !taffo.info !82
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.info !84, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds float, float* %B, i32 %sub16, !taffo.initweight !93, !taffo.info !38
  %3 = load float, float* %arrayidx17, align 4, !taffo.initweight !94, !taffo.info !38
  %arrayidx18 = getelementptr inbounds float, float* %B, i32 %i.1, !taffo.initweight !93, !taffo.info !38
  %4 = load float, float* %arrayidx18, align 4, !taffo.initweight !94, !taffo.info !38
  %add19 = fadd float %3, %4, !taffo.initweight !95, !taffo.info !108
  %add20 = add nsw i32 %i.1, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx21 = getelementptr inbounds float, float* %B, i32 %add20, !taffo.initweight !93, !taffo.info !38
  %5 = load float, float* %arrayidx21, align 4, !taffo.initweight !94, !taffo.info !38
  %add22 = fadd float %add19, %5, !taffo.initweight !95, !taffo.info !110
  %conv23 = fpext float %add22 to double, !taffo.initweight !100, !taffo.info !110
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.initweight !101, !taffo.info !112, !taffo.constinfo !73
  %conv25 = fptrunc double %mul24 to float, !taffo.initweight !104, !taffo.info !114
  %arrayidx26 = getelementptr inbounds float, float* %A, i32 %i.1, !taffo.initweight !93, !taffo.info !36
  store float %conv25, float* %arrayidx26, align 4, !taffo.initweight !94, !taffo.info !36
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !116

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.info !82, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !117

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !118 !taffo.funinfo !119 !taffo.sourceFunction !42 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !41, !taffo.info !120
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !51, !taffo.info !61

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !41, !taffo.info !61
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !51, !taffo.info !121, !taffo.constinfo !63
  %conv2 = sitofp i32 %n to float, !taffo.info !80
  %div = fdiv float %add, %conv2, !taffo.initweight !64, !taffo.info !123
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.initweight !41, !taffo.info !125
  store float %div, float* %arrayidx, align 4, !taffo.initweight !51, !taffo.info !65
  %conv3 = sitofp i32 %i.0 to float, !taffo.initweight !41, !taffo.info !61
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !51, !taffo.info !126, !taffo.constinfo !66
  %conv5 = sitofp i32 %n to float, !taffo.info !80
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !64, !taffo.info !128
  %arrayidx7 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.initweight !41, !taffo.info !130
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !51, !taffo.info !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !41, !taffo.info !131, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.160000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x3FF111116A8B8F15}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+01}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.020000e+02}
!12 = !{i32 1, !"NumRegisterParameters", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
!21 = !{i1 false, !22}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+01, double 1.000000e+01}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 2.000000e+00, double 2.000000e+00}
!27 = !{i1 false, i1 false}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{}
!31 = !{i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false}
!33 = !{i1 true}
!34 = !{i32 0}
!35 = !{!"A"}
!36 = !{i1 false, !37, i1 false, i2 -1}
!37 = !{double 1.333330e-01, double 0x3FF111116A8B8F15}
!38 = !{i1 false, !39, i1 false, i2 -1}
!39 = !{double 2.000000e-01, double 0x3FF22221C8A7A41E}
!40 = !{i32 1}
!41 = !{i32 2}
!42 = !{void (i32, float*, float*)* @init_array}
!43 = !{i1 false, i1 false, i1 false, i1 false}
!44 = !{i1 false}
!45 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d}
!46 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.600000e+01}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 1.000000e+00}
!51 = !{i32 3}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 1.600000e+01}
!54 = distinct !{!54, !29}
!55 = !{i1 false, i1 false, i1 false}
!56 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!57 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!58 = !{i32 -1, i32 -1, i32 -1}
!59 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!60 = !{void (i32, float*, float*)* @init_array.2}
!61 = !{i1 false, !62, i1 false, i2 -1}
!62 = !{double -1.500000e+01, double 1.500000e+01}
!63 = !{i1 false, !25}
!64 = !{i32 4}
!65 = !{i1 false, i1 false, i1 false, i2 1}
!66 = !{i1 false, !67}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 3.000000e+00, double 3.000000e+00}
!69 = distinct !{!69, !29}
!70 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!71 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!72 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d.1}
!73 = !{!74, i1 false}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 3.333300e-01, double 3.333300e-01}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = distinct !{!78, !29}
!79 = !{i32 1, !80, i32 1, !6}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.500000e+01, double 1.500000e+01}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 1.000000e+00, double 1.000000e+00}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 0.000000e+00, double 0.000000e+00}
!86 = distinct !{!86, !29}
!87 = !{i32 -1, i32 -1, i32 2, i32 2}
!88 = !{i32 1, !22, i32 1, !80, i32 1, !36, i32 1, !38}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.000000e+00, double 2.000000e+00}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 1.400000e+01, double 1.400000e+01}
!93 = !{i32 5}
!94 = !{i32 6}
!95 = !{i32 7}
!96 = !{i1 false, !97, i1 false, i2 -1}
!97 = !{double 2.666660e-01, double 0x400111116A8B8F15}
!98 = !{i1 false, !99, i1 false, i2 -1}
!99 = !{double 3.999990e-01, double 0x4009999A1FD156A0}
!100 = !{i32 8}
!101 = !{i32 9}
!102 = !{i1 false, !103, i1 false, i2 -1}
!103 = !{double 0x3FC1110315EF359A, double 0x3FF111063B3B93F8}
!104 = !{i32 10}
!105 = !{i1 false, !106, i1 false, i2 -1}
!106 = !{double 0x3FC1110300000000, double 0x3FF1110640000000}
!107 = distinct !{!107, !29}
!108 = !{i1 false, !109, i1 false, i2 -1}
!109 = !{double 4.000000e-01, double 0x40022221C8A7A41E}
!110 = !{i1 false, !111, i1 false, i2 -1}
!111 = !{double 0x3FE3333333333334, double 0x400B3332ACFB762D}
!112 = !{i1 false, !113, i1 false, i2 -1}
!113 = !{double 0x3FC99988D2A1F8E5, double 0x3FF22215E6632241}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double 0x3FC99988C0000000, double 0x3FF2221600000000}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = !{i32 -1, i32 2, i32 2}
!119 = !{i32 1, !80, i32 1, !36, i32 1, !38}
!120 = !{i1 false, !50, i1 false, i2 -1}
!121 = !{i1 false, !122, i1 false, i2 -1}
!122 = !{double -1.300000e+01, double 1.700000e+01}
!123 = !{i1 false, !124, i1 false, i2 -1}
!124 = !{double 0xBFEBBBBBBBBBBBBC, double 0x3FF2222222222222}
!125 = !{i1 false, !37, i1 false, i2 1}
!126 = !{i1 false, !127, i1 false, i2 -1}
!127 = !{double -1.200000e+01, double 1.800000e+01}
!128 = !{i1 false, !129, i1 false, i2 -1}
!129 = !{double -8.000000e-01, double 1.200000e+00}
!130 = !{i1 false, !39, i1 false, i2 1}
!131 = !{i1 false, !132, i1 false, i2 -1}
!132 = !{double -1.400000e+01, double 1.600000e+01}
!133 = distinct !{!133, !29}
