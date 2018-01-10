; ModuleID = 'parallel.bc'
source_filename = "/home/moon/.cache/pocl/kcache/temp_slauZb.cl"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse41.round.ss(<4 x float>, <4 x float>, i32) #0

; Function Attrs: nounwind readnone
declare i32 @ilogbf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @ldexpf(float, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: noinline nounwind
define void @_pocl_launcher_opencl_cutoff_potential_lattice(i32, i32, <4 x float>* nocapture readonly, i32, float, float, float, float* nocapture, i32, i32* nocapture readonly, <4 x i32>* nocapture readonly, [1024 x float]* nocapture, <4 x i32>* nocapture, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* nocapture readonly) local_unnamed_addr #3 {
  %.i0 = getelementptr inbounds <4 x i32>, <4 x i32>* %12, i64 0, i64 0
  %.i1 = getelementptr <4 x i32>, <4 x i32>* %12, i64 0, i64 1
  %.i2 = getelementptr <4 x i32>, <4 x i32>* %12, i64 0, i64 2
  %.i3 = getelementptr <4 x i32>, <4 x i32>* %12, i64 0, i64 3
  %.shr67.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.mul42.pocl_context.i = alloca [2 x [8 x [8 x float]]], align 64
  %.mul32.pocl_context.i = alloca [2 x [8 x [8 x float]]], align 64
  %.mul26.pocl_context.i = alloca [2 x [8 x [8 x float]]], align 64
  %.conv.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.add4.pocl_context.i = alloca [2 x [8 x [8 x i64]]], align 64
  %..ex_phi.pocl_context.i = alloca [2 x [8 x [8 x <4 x i32>]]], align 64
  %..ex_phi76.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.nbrid.0274.ex_phi.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.totalbins.0273.ex_phi.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.numbins.0272.ex_phi.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.energy.0271.ex_phi.pocl_context.i = alloca [2 x [8 x [8 x float]]], align 64
  %.idxprom101261.pocl_context.i = alloca [2 x [8 x [8 x i64]]], align 64
  %.idxprom95260.pocl_context.i = alloca [2 x [8 x [8 x i64]]], align 64
  %.and91.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.mul70.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.4.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.3.pocl_context.i = alloca [2 x [8 x [8 x float]]], align 64
  %.2.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.1.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.0.pocl_context.i = alloca [2 x [8 x [8 x float]]], align 64
  %.sub.numbins.0.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %.add179.pocl_context.i = alloca [2 x [8 x [8 x i32]]], align 64
  %15 = getelementptr { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* %13, i64 0, i32 2, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* %13, i64 0, i32 2, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* %13, i64 0, i32 1, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* %13, i64 0, i32 1, i64 1
  %22 = load i64, i64* %21, align 8
  %savedstack = tail call i8* @llvm.stacksave()
  %23 = bitcast [2 x [8 x [8 x i32]]]* %.shr67.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %23)
  %24 = bitcast [2 x [8 x [8 x float]]]* %.mul42.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %24)
  %25 = bitcast [2 x [8 x [8 x float]]]* %.mul32.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %25)
  %26 = bitcast [2 x [8 x [8 x float]]]* %.mul26.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %26)
  %27 = bitcast [2 x [8 x [8 x i32]]]* %.conv.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %27)
  %28 = bitcast [2 x [8 x [8 x i64]]]* %.add4.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %28)
  %29 = bitcast [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 2048, i8* nonnull %29)
  %30 = bitcast [2 x [8 x [8 x i32]]]* %..ex_phi76.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %30)
  %31 = bitcast [2 x [8 x [8 x i32]]]* %.nbrid.0274.ex_phi.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %31)
  %32 = bitcast [2 x [8 x [8 x i32]]]* %.totalbins.0273.ex_phi.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %32)
  %33 = bitcast [2 x [8 x [8 x i32]]]* %.numbins.0272.ex_phi.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %33)
  %34 = bitcast [2 x [8 x [8 x float]]]* %.energy.0271.ex_phi.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %34)
  %35 = bitcast [2 x [8 x [8 x i64]]]* %.idxprom101261.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %35)
  %36 = bitcast [2 x [8 x [8 x i64]]]* %.idxprom95260.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %36)
  %37 = bitcast [2 x [8 x [8 x i32]]]* %.and91.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %37)
  %38 = bitcast [2 x [8 x [8 x i32]]]* %.mul70.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %38)
  %39 = bitcast [2 x [8 x [8 x i32]]]* %.4.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %39)
  %40 = bitcast [2 x [8 x [8 x float]]]* %.3.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %40)
  %41 = bitcast [2 x [8 x [8 x i32]]]* %.2.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %41)
  %42 = bitcast [2 x [8 x [8 x i32]]]* %.1.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %42)
  %43 = bitcast [2 x [8 x [8 x float]]]* %.0.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %43)
  %44 = bitcast [2 x [8 x [8 x i32]]]* %.sub.numbins.0.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %44)
  %45 = bitcast [2 x [8 x [8 x i32]]]* %.add179.pocl_context.i to i8*
  call void @llvm.lifetime.start(i64 512, i8* nonnull %45)
  %idx.ext.i = sext i32 %3 to i64
  %46 = getelementptr inbounds [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.add4.pocl_context.i, i64 0, i64 0, i64 0, i64 0
  store i64 0, i64* %46, align 64, !llvm.mem.parallel_loop_access !2
  %47 = getelementptr inbounds [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.conv.pocl_context.i, i64 0, i64 0, i64 0, i64 0
  store i32 0, i32* %47, align 64, !llvm.mem.parallel_loop_access !2
  %conv5.i = sext i32 %8 to i64
  %mul7.i = mul i64 %22, %conv5.i
  %add9.i = add i64 %mul7.i, %18
  %shr.i = lshr i64 %20, 2
  %mul11.i = mul i64 %add9.i, %shr.i
  %shr13.i = lshr i64 %16, 2
  %add14.i = add i64 %mul11.i, %shr13.i
  %mul15.i = shl i64 %add14.i, 9
  %add.ptr16.i = getelementptr inbounds float, float* %7, i64 %mul15.i
  %and.i = shl i64 %16, 7
  %mul18.i = and i64 %and.i, 384
  %add.ptr19.i = getelementptr inbounds float, float* %add.ptr16.i, i64 %mul18.i
  %mul22.i = shl i64 %shr13.i, 3
  %conv25.i = uitofp i64 %mul22.i to float
  %mul26.i = fmul float %conv25.i, %4
  %48 = getelementptr inbounds [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul26.pocl_context.i, i64 0, i64 0, i64 0, i64 0
  store float %mul26.i, float* %48, align 64, !llvm.mem.parallel_loop_access !2
  %mul28.i = shl i64 %18, 3
  %conv31.i = uitofp i64 %mul28.i to float
  %mul32.i = fmul float %conv31.i, %4
  %49 = getelementptr inbounds [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul32.pocl_context.i, i64 0, i64 0, i64 0, i64 0
  store float %mul32.i, float* %49, align 64, !llvm.mem.parallel_loop_access !2
  %mul33.i = shl nsw i32 %8, 3
  %conv34.i = sext i32 %mul33.i to i64
  %and36.i = shl i64 %16, 1
  %mul37.i = and i64 %and36.i, 6
  %add38.i = or i64 %mul37.i, %conv34.i
  %conv41.i = uitofp i64 %add38.i to float
  %mul42.i = fmul float %conv41.i, %4
  %50 = getelementptr inbounds [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul42.pocl_context.i, i64 0, i64 0, i64 0, i64 0
  store float %mul42.i, float* %50, align 64, !llvm.mem.parallel_loop_access !2
  %add46.i = or i64 %mul22.i, 4
  %conv47.i = uitofp i64 %add46.i to float
  %mul48.i = fmul float %conv47.i, %4
  %mul49.i = fmul float %mul48.i, 2.500000e-01
  %vecinit3.i.i2.i.i.i67.i.upto0 = insertelement <4 x float> undef, float %mul49.i, i32 0
  %51 = tail call <4 x float> @llvm.x86.sse41.round.ss(<4 x float> undef, <4 x float> %vecinit3.i.i2.i.i.i67.i.upto0, i32 1) #4
  %vecext.i.i.i.i.i68.i = extractelement <4 x float> %51, i32 0
  %conv51.i = fptosi float %vecext.i.i.i.i.i68.i to i32
  %.i34 = load i32, i32* %.i3, align 4, !llvm.mem.parallel_loop_access !2
  store i32 %conv51.i, i32* %.i0, align 16, !llvm.mem.parallel_loop_access !2
  %add54.i = or i64 %mul28.i, 4
  %conv55.i = uitofp i64 %add54.i to float
  %mul56.i = fmul float %conv55.i, %4
  %mul57.i = fmul float %mul56.i, 2.500000e-01
  %vecinit3.i.i2.i.i.i39.i.upto0 = insertelement <4 x float> undef, float %mul57.i, i32 0
  %52 = tail call <4 x float> @llvm.x86.sse41.round.ss(<4 x float> undef, <4 x float> %vecinit3.i.i2.i.i.i39.i.upto0, i32 1) #4
  %vecext.i.i.i.i.i40.i = extractelement <4 x float> %52, i32 0
  %conv59.i = fptosi float %vecext.i.i.i.i.i40.i to i32
  store i32 %conv59.i, i32* %.i1, align 4, !llvm.mem.parallel_loop_access !2
  %add61.i = or i32 %mul33.i, 4
  %conv62.i = sitofp i32 %add61.i to float
  %mul63.i = fmul float %conv62.i, %4
  %mul64.i = fmul float %mul63.i, 2.500000e-01
  %vecinit3.i.i2.i.i.i.i.upto0 = insertelement <4 x float> undef, float %mul64.i, i32 0
  %53 = tail call <4 x float> @llvm.x86.sse41.round.ss(<4 x float> undef, <4 x float> %vecinit3.i.i2.i.i.i.i.upto0, i32 1) #4
  %vecext.i.i.i.i.i.i = extractelement <4 x float> %53, i32 0
  %conv66.i = fptosi float %vecext.i.i.i.i.i.i to i32
  store i32 %conv66.i, i32* %.i2, align 8, !llvm.mem.parallel_loop_access !2
  %54 = getelementptr inbounds [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.shr67.pocl_context.i, i64 0, i64 0, i64 0, i64 0
  store i32 0, i32* %54, align 64, !llvm.mem.parallel_loop_access !2
  %.pocl_temp.4.i = load i32, i32* %9, align 4, !tbaa !9, !llvm.mem.parallel_loop_access !2
  %cmp270.i = icmp sgt i32 %.pocl_temp.4.i, 0
  br i1 %cmp270.i, label %pregion_for_entry.pregion_for_init149.i.preheader, label %for.end180.r_exit.i

pregion_for_entry.pregion_for_init149.i.preheader: ; preds = %14
  %broadcast.splatinsert200 = insertelement <4 x i64> undef, i64 %mul22.i, i32 0
  %broadcast.splat201 = shufflevector <4 x i64> %broadcast.splatinsert200, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <4 x float> undef, float %4, i32 0
  %broadcast.splat203 = shufflevector <4 x float> %broadcast.splatinsert202, <4 x float> undef, <4 x i32> zeroinitializer
  br label %pregion_for_entry.pregion_for_init149.i

pregion_for_end150.i:                             ; preds = %pregion_for_end146.i
  %55 = add nuw nsw i64 %_local_id_z.0, 1
  %exitcond197 = icmp eq i64 %55, 2
  br i1 %exitcond197, label %pregion_for_entry.pregion_for_init137.i.preheader, label %pregion_for_entry.pregion_for_init149.i, !llvm.loop !5

pregion_for_entry.pregion_for_init137.i.preheader: ; preds = %pregion_for_end150.i
  store i32 %conv59.i, i32* %.i1, align 4
  store i32 %conv66.i, i32* %.i2, align 8
  store i32 %conv51.i, i32* %.i0, align 16
  %broadcast.splatinsert243 = insertelement <4 x i32> undef, i32 %conv51.i, i32 0
  %broadcast.splat244 = shufflevector <4 x i32> %broadcast.splatinsert243, <4 x i32> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <4 x i32> undef, i32 %conv59.i, i32 0
  %broadcast.splat246 = shufflevector <4 x i32> %broadcast.splatinsert245, <4 x i32> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert247 = insertelement <4 x i32> undef, i32 %conv66.i, i32 0
  %broadcast.splat248 = shufflevector <4 x i32> %broadcast.splatinsert247, <4 x i32> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert249 = insertelement <4 x i32> undef, i32 %.i34, i32 0
  %broadcast.splat250 = shufflevector <4 x i32> %broadcast.splatinsert249, <4 x i32> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <4 x i32> undef, i32 %.pocl_temp.4.i, i32 0
  %broadcast.splat252 = shufflevector <4 x i32> %broadcast.splatinsert251, <4 x i32> undef, <4 x i32> zeroinitializer
  %56 = shufflevector <4 x i32> %broadcast.splat244, <4 x i32> %broadcast.splat246, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %57 = shufflevector <4 x i32> %broadcast.splat248, <4 x i32> %broadcast.splat250, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i32> %56, <8 x i32> %57, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  br label %pregion_for_entry.pregion_for_init137.i

pregion_for_end146.i.loopexit:                    ; preds = %pregion_for_entry.entry.peeled_wi.i
  br label %pregion_for_end146.i

pregion_for_end146.i:                             ; preds = %middle.block, %pregion_for_end146.i.loopexit
  %58 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond196 = icmp eq i64 %58, 8
  br i1 %exitcond196, label %pregion_for_end150.i, label %pregion_for_entry.pregion_for_init145.i, !llvm.loop !4

pregion_for_entry.pregion_for_init149.i:          ; preds = %pregion_for_end150.i, %pregion_for_entry.pregion_for_init149.i.preheader
  %.pocl.local_id_x_init.i.0 = phi i64 [ 0, %pregion_for_end150.i ], [ 1, %pregion_for_entry.pregion_for_init149.i.preheader ]
  %_local_id_z.0 = phi i64 [ %55, %pregion_for_end150.i ], [ 0, %pregion_for_entry.pregion_for_init149.i.preheader ]
  %mul.peeled_wi.i = shl i64 %_local_id_z.0, 3
  %add40.peeled_wi.i = add nuw nsw i64 %_local_id_z.0, %add38.i
  %conv41.peeled_wi.i = uitofp i64 %add40.peeled_wi.i to float
  %mul42.peeled_wi.i = fmul float %conv41.peeled_wi.i, %4
  %broadcast.splatinsert206 = insertelement <4 x float> undef, float %mul42.peeled_wi.i, i32 0
  %broadcast.splat207 = shufflevector <4 x float> %broadcast.splatinsert206, <4 x float> undef, <4 x i32> zeroinitializer
  br label %pregion_for_entry.pregion_for_init145.i

pregion_for_entry.pregion_for_init145.i:          ; preds = %pregion_for_entry.pregion_for_init149.i, %pregion_for_end146.i
  %.pocl.local_id_x_init.i.1 = phi i64 [ %.pocl.local_id_x_init.i.0, %pregion_for_entry.pregion_for_init149.i ], [ 0, %pregion_for_end146.i ]
  %_local_id_y.0 = phi i64 [ 0, %pregion_for_entry.pregion_for_init149.i ], [ %58, %pregion_for_end146.i ]
  %add.peeled_wi.i = add nuw nsw i64 %_local_id_y.0, %mul.peeled_wi.i
  %mul2.peeled_wi.i = shl i64 %add.peeled_wi.i, 3
  %add30.peeled_wi.i = add nuw nsw i64 %_local_id_y.0, %mul28.i
  %conv31.peeled_wi.i = uitofp i64 %add30.peeled_wi.i to float
  %mul32.peeled_wi.i = fmul float %conv31.peeled_wi.i, %4
  %59 = add nsw i64 %.pocl.local_id_x_init.i.1, 1
  %60 = icmp ugt i64 %59, 8
  %umax = select i1 %60, i64 %59, i64 8
  %61 = sub nsw i64 %umax, %.pocl.local_id_x_init.i.1
  %min.iters.check = icmp ult i64 %61, 4
  br i1 %min.iters.check, label %pregion_for_entry.entry.peeled_wi.i.preheader, label %min.iters.checked

min.iters.checked:                                ; preds = %pregion_for_entry.pregion_for_init145.i
  %n.vec = and i64 %61, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %.pocl.local_id_x_init.i.1, %n.vec
  br i1 %cmp.zero, label %pregion_for_entry.entry.peeled_wi.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %.splatinsert = insertelement <4 x i64> undef, i64 %.pocl.local_id_x_init.i.1, i32 0
  %.splat = shufflevector <4 x i64> %.splatinsert, <4 x i64> undef, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %.splat, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert = insertelement <4 x i64> undef, i64 %mul2.peeled_wi.i, i32 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert204 = insertelement <4 x float> undef, float %mul32.peeled_wi.i, i32 0
  %broadcast.splat205 = shufflevector <4 x float> %broadcast.splatinsert204, <4 x float> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %62 = add i64 %.pocl.local_id_x_init.i.1, %index
  %63 = add <4 x i64> %vec.ind, %broadcast.splat
  %64 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.add4.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %62
  %65 = bitcast i64* %64 to <4 x i64>*
  store <4 x i64> %63, <4 x i64>* %65, align 8
  %66 = trunc <4 x i64> %63 to <4 x i32>
  %67 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.conv.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %62
  %68 = bitcast i32* %67 to <4 x i32>*
  store <4 x i32> %66, <4 x i32>* %68, align 4
  %69 = add <4 x i64> %vec.ind, %broadcast.splat201
  %70 = uitofp <4 x i64> %69 to <4 x float>
  %71 = fmul <4 x float> %70, %broadcast.splat203
  %72 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul26.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %62
  %73 = bitcast float* %72 to <4 x float>*
  store <4 x float> %71, <4 x float>* %73, align 4
  %74 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul32.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %62
  %75 = bitcast float* %74 to <4 x float>*
  store <4 x float> %broadcast.splat205, <4 x float>* %75, align 4
  %76 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul42.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %62
  %77 = bitcast float* %76 to <4 x float>*
  store <4 x float> %broadcast.splat207, <4 x float>* %77, align 4
  %78 = ashr <4 x i32> %66, <i32 4, i32 4, i32 4, i32 4>
  %79 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.shr67.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %62
  %80 = bitcast i32* %79 to <4 x i32>*
  store <4 x i32> %78, <4 x i32>* %80, align 4
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %81 = icmp eq i64 %index.next, %n.vec
  br i1 %81, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %61, %n.vec
  br i1 %cmp.n, label %pregion_for_end146.i, label %pregion_for_entry.entry.peeled_wi.i.preheader

pregion_for_entry.entry.peeled_wi.i.preheader:    ; preds = %middle.block, %min.iters.checked, %pregion_for_entry.pregion_for_init145.i
  %_local_id_x.0.ph = phi i64 [ %.pocl.local_id_x_init.i.1, %min.iters.checked ], [ %.pocl.local_id_x_init.i.1, %pregion_for_entry.pregion_for_init145.i ], [ %ind.end, %middle.block ]
  br label %pregion_for_entry.entry.peeled_wi.i

pregion_for_entry.entry.peeled_wi.i:              ; preds = %pregion_for_entry.entry.peeled_wi.i, %pregion_for_entry.entry.peeled_wi.i.preheader
  %_local_id_x.0 = phi i64 [ %88, %pregion_for_entry.entry.peeled_wi.i ], [ %_local_id_x.0.ph, %pregion_for_entry.entry.peeled_wi.i.preheader ]
  %add4.peeled_wi.i = add i64 %_local_id_x.0, %mul2.peeled_wi.i
  %82 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.add4.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %_local_id_x.0
  store i64 %add4.peeled_wi.i, i64* %82, align 8
  %conv.peeled_wi.i = trunc i64 %add4.peeled_wi.i to i32
  %83 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.conv.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %_local_id_x.0
  store i32 %conv.peeled_wi.i, i32* %83, align 4
  %add24.peeled_wi.i = add i64 %_local_id_x.0, %mul22.i
  %conv25.peeled_wi.i = uitofp i64 %add24.peeled_wi.i to float
  %mul26.peeled_wi.i = fmul float %conv25.peeled_wi.i, %4
  %84 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul26.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %_local_id_x.0
  store float %mul26.peeled_wi.i, float* %84, align 4
  %85 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul32.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %_local_id_x.0
  store float %mul32.peeled_wi.i, float* %85, align 4
  %86 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul42.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %_local_id_x.0
  store float %mul42.peeled_wi.i, float* %86, align 4
  %shr67.peeled_wi.i = ashr i32 %conv.peeled_wi.i, 4
  %87 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.shr67.pocl_context.i, i64 0, i64 %_local_id_z.0, i64 %_local_id_y.0, i64 %_local_id_x.0
  store i32 %shr67.peeled_wi.i, i32* %87, align 4
  %88 = add nsw i64 %_local_id_x.0, 1
  %89 = icmp ult i64 %88, 8
  br i1 %89, label %pregion_for_entry.entry.peeled_wi.i, label %pregion_for_end146.i.loopexit, !llvm.loop !16

pregion_for_entry.pregion_for_init137.i:          ; preds = %pregion_for_end138.i, %pregion_for_entry.pregion_for_init137.i.preheader
  %_local_id_z.1 = phi i64 [ %127, %pregion_for_end138.i ], [ 0, %pregion_for_entry.pregion_for_init137.i.preheader ]
  br label %pregion_for_entry.pregion_for_init133.i

pregion_for_entry.pregion_for_init133.i:          ; preds = %pregion_for_end134.i, %pregion_for_entry.pregion_for_init137.i
  %_local_id_y.1 = phi i64 [ 0, %pregion_for_entry.pregion_for_init137.i ], [ %128, %pregion_for_end134.i ]
  %scevgep = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 0
  %scevgep213 = bitcast <4 x i32>* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep213, i64 8
  %scevgep215 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 0
  %scevgep215216 = bitcast <4 x i32>* %scevgep215 to i8*
  %uglygep217 = getelementptr i8, i8* %scevgep215216, i64 12
  %scevgep222 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 0
  %scevgep222223 = bitcast <4 x i32>* %scevgep222 to i8*
  %uglygep224 = getelementptr i8, i8* %scevgep222223, i64 4
  %scevgep229 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 0
  %90 = icmp ugt i8* %uglygep, inttoptr (i64 -113 to i8*)
  %91 = icmp ugt i8* %uglygep217, inttoptr (i64 -113 to i8*)
  %92 = or i1 %90, %91
  %93 = icmp ugt i8* %uglygep224, inttoptr (i64 -113 to i8*)
  %94 = or i1 %92, %93
  %95 = icmp ugt <4 x i32>* %scevgep229, inttoptr (i64 -113 to <4 x i32>*)
  %96 = or i1 %94, %95
  br i1 %96, label %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i.preheader, label %vector.ph234

pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i.preheader: ; preds = %pregion_for_entry.pregion_for_init133.i
  br label %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i

vector.ph234:                                     ; preds = %pregion_for_entry.pregion_for_init133.i
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph234
  %index235 = phi i64 [ 0, %vector.ph234 ], [ %index.next236, %vector.body208 ]
  %97 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.shr67.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %98 = bitcast i32* %97 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %98, align 16
  %99 = shl <4 x i32> %wide.load, <i32 5, i32 5, i32 5, i32 5>
  %100 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.mul70.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %101 = bitcast i32* %100 to <4 x i32>*
  store <4 x i32> %99, <4 x i32>* %101, align 16
  %102 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.conv.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %103 = bitcast i32* %102 to <4 x i32>*
  %wide.load242 = load <4 x i32>, <4 x i32>* %103, align 16
  %104 = and <4 x i32> %wide.load242, <i32 15, i32 15, i32 15, i32 15>
  %105 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.and91.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %106 = bitcast i32* %105 to <4 x i32>*
  store <4 x i32> %104, <4 x i32>* %106, align 16
  %107 = zext <4 x i32> %104 to <4 x i64>
  %108 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.idxprom95260.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %109 = bitcast i64* %108 to <4 x i64>*
  store <4 x i64> %107, <4 x i64>* %109, align 32
  %110 = or <4 x i32> %104, <i32 16, i32 16, i32 16, i32 16>
  %111 = zext <4 x i32> %110 to <4 x i64>
  %112 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.idxprom101261.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %113 = bitcast i64* %112 to <4 x i64>*
  store <4 x i64> %111, <4 x i64>* %113, align 32
  %114 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235, i64 0
  %115 = bitcast i32* %114 to <16 x i32>*
  store <16 x i32> %interleaved.vec, <16 x i32>* %115, align 64
  %116 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %..ex_phi76.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %117 = bitcast i32* %116 to <4 x i32>*
  store <4 x i32> %broadcast.splat252, <4 x i32>* %117, align 16
  %118 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.nbrid.0274.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %119 = bitcast i32* %118 to <4 x i32>*
  store <4 x i32> %wide.load, <4 x i32>* %119, align 16
  %120 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.totalbins.0273.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %121 = bitcast i32* %120 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %121, align 16
  %122 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.numbins.0272.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %123 = bitcast i32* %122 to <4 x i32>*
  store <4 x i32> <i32 32, i32 32, i32 32, i32 32>, <4 x i32>* %123, align 16
  %124 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.energy.0271.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %index235
  %125 = bitcast float* %124 to <4 x float>*
  store <4 x float> zeroinitializer, <4 x float>* %125, align 16
  %index.next236 = add i64 %index235, 4
  %126 = icmp eq i64 %index.next236, 8
  br i1 %126, label %pregion_for_end134.i.loopexit280, label %vector.body208, !llvm.loop !18

pregion_for_end138.i:                             ; preds = %pregion_for_end134.i
  %127 = add nuw nsw i64 %_local_id_z.1, 1
  %exitcond195 = icmp eq i64 %127, 2
  br i1 %exitcond195, label %pregion_for_init117.i.preheader, label %pregion_for_entry.pregion_for_init137.i, !llvm.loop !19

pregion_for_init117.i.preheader:                  ; preds = %pregion_for_end138.i
  br label %pregion_for_init117.i

pregion_for_end134.i.loopexit:                    ; preds = %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i
  br label %pregion_for_end134.i

pregion_for_end134.i.loopexit280:                 ; preds = %vector.body208
  br label %pregion_for_end134.i

pregion_for_end134.i:                             ; preds = %pregion_for_end134.i.loopexit280, %pregion_for_end134.i.loopexit
  %128 = add nuw nsw i64 %_local_id_y.1, 1
  %exitcond194 = icmp eq i64 %128, 8
  br i1 %exitcond194, label %pregion_for_end138.i, label %pregion_for_entry.pregion_for_init133.i, !llvm.loop !20

pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i: ; preds = %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i, %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i.preheader
  %_local_id_x.1 = phi i64 [ %142, %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i ], [ 0, %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i.preheader ]
  %129 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.shr67.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  %130 = load i32, i32* %129, align 4
  %mul70.i = shl i32 %130, 5
  %131 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.mul70.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i32 %mul70.i, i32* %131, align 4, !llvm.mem.parallel_loop_access !21
  %132 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.conv.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  %133 = load i32, i32* %132, align 4, !llvm.mem.parallel_loop_access !21
  %and91.i = and i32 %133, 15
  %134 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.and91.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i32 %and91.i, i32* %134, align 4, !llvm.mem.parallel_loop_access !21
  %idxprom95260.i = zext i32 %and91.i to i64
  %135 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.idxprom95260.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i64 %idxprom95260.i, i64* %135, align 8, !llvm.mem.parallel_loop_access !21
  %add100.i = or i32 %and91.i, 16
  %idxprom101261.i = zext i32 %add100.i to i64
  %136 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.idxprom101261.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i64 %idxprom101261.i, i64* %136, align 8, !llvm.mem.parallel_loop_access !21
  %.i043 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1, i64 0
  store i32 %conv51.i, i32* %.i043, align 16, !llvm.mem.parallel_loop_access !21
  %.i144 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1, i64 1
  store i32 %conv59.i, i32* %.i144, align 4, !llvm.mem.parallel_loop_access !21
  %.i245 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1, i64 2
  store i32 %conv66.i, i32* %.i245, align 8, !llvm.mem.parallel_loop_access !21
  %.i346 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1, i64 3
  store i32 %.i34, i32* %.i346, align 4, !llvm.mem.parallel_loop_access !21
  %137 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %..ex_phi76.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i32 %.pocl_temp.4.i, i32* %137, align 4, !llvm.mem.parallel_loop_access !21
  %138 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.nbrid.0274.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i32 %130, i32* %138, align 4, !llvm.mem.parallel_loop_access !21
  %139 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.totalbins.0273.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i32 0, i32* %139, align 4, !llvm.mem.parallel_loop_access !21
  %140 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.numbins.0272.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store i32 32, i32* %140, align 4, !llvm.mem.parallel_loop_access !21
  %141 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.energy.0271.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.1, i64 %_local_id_y.1, i64 %_local_id_x.1
  store float 0.000000e+00, float* %141, align 4, !llvm.mem.parallel_loop_access !21
  %142 = add nuw nsw i64 %_local_id_x.1, 1
  %exitcond193 = icmp eq i64 %142, 8
  br i1 %exitcond193, label %pregion_for_end134.i.loopexit, label %pregion_for_entry.for.body.lr.ph.loopbarrier.postbarrier.postbarrier.prebarrier.i, !llvm.loop !23

pregion_for_init117.i.loopexit:                   ; preds = %pregion_for_end126.i
  br label %pregion_for_init117.i

pregion_for_init117.i:                            ; preds = %pregion_for_init117.i.loopexit, %pregion_for_init117.i.preheader
  br label %pregion_for_entry.pregion_for_init113.i

pregion_for_entry.pregion_for_init113.i:          ; preds = %pregion_for_end114.i, %pregion_for_init117.i
  %_local_id_z.2 = phi i64 [ 0, %pregion_for_init117.i ], [ %177, %pregion_for_end114.i ]
  br label %pregion_for_entry.pregion_for_init109.i

pregion_for_entry.pregion_for_init109.i:          ; preds = %pregion_for_end110.i, %pregion_for_entry.pregion_for_init113.i
  %_local_id_y.2 = phi i64 [ 0, %pregion_for_entry.pregion_for_init113.i ], [ %179, %pregion_for_end110.i ]
  br label %pregion_for_entry.for.body.i

pregion_for_entry.for.body.i:                     ; preds = %for.end.r_exit.i, %pregion_for_entry.pregion_for_init109.i
  %_local_id_x.2 = phi i64 [ 0, %pregion_for_entry.pregion_for_init109.i ], [ %176, %for.end.r_exit.i ]
  %.i047 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2, i64 0
  %.i048 = load i32, i32* %.i047, align 16, !llvm.mem.parallel_loop_access !24
  %.i149 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2, i64 1
  %.i150 = load i32, i32* %.i149, align 4, !llvm.mem.parallel_loop_access !24
  %.i251 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2, i64 2
  %.i252 = load i32, i32* %.i251, align 8, !llvm.mem.parallel_loop_access !24
  %143 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %..ex_phi76.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %144 = load i32, i32* %143, align 4, !llvm.mem.parallel_loop_access !24
  %145 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.nbrid.0274.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.totalbins.0273.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %148 = load i32, i32* %147, align 4, !llvm.mem.parallel_loop_access !24
  %149 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.1.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  store i32 %148, i32* %149, align 4, !llvm.mem.parallel_loop_access !24
  %150 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.numbins.0272.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %151 = load i32, i32* %150, align 4, !llvm.mem.parallel_loop_access !24
  %152 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.2.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  store i32 %151, i32* %152, align 4, !llvm.mem.parallel_loop_access !24
  %153 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.energy.0271.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %154 = bitcast float* %153 to i32*
  %155 = load i32, i32* %154, align 4, !llvm.mem.parallel_loop_access !24
  %156 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.3.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %157 = bitcast float* %156 to i32*
  store i32 %155, i32* %157, align 4, !llvm.mem.parallel_loop_access !24
  %158 = sext i32 %146 to i64
  %159 = sext i32 %144 to i64
  %160 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.mul70.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %161 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.idxprom95260.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %162 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.and91.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  %163 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.idxprom101261.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body76.i, %pregion_for_entry.for.body.i
  %inc.i152 = phi i32 [ %inc.i, %for.body76.i ], [ 0, %pregion_for_entry.for.body.i ]
  %add107.i149 = phi i32 [ %add107.i, %for.body76.i ], [ %146, %pregion_for_entry.for.body.i ]
  %indvars.iv.next.i146 = phi i64 [ %indvars.iv.next.i, %for.body76.i ], [ %158, %pregion_for_entry.for.body.i ]
  %cmp74.i = icmp slt i64 %indvars.iv.next.i146, %159
  %164 = trunc i64 %indvars.iv.next.i146 to i32
  br i1 %cmp74.i, label %for.body76.i, label %for.end.r_exit.i

for.body76.i:                                     ; preds = %land.rhs.i
  %arrayidx.i.i0 = getelementptr inbounds <4 x i32>, <4 x i32>* %10, i64 %indvars.iv.next.i146, i64 0
  %.i055 = load i32, i32* %arrayidx.i.i0, align 16, !llvm.mem.parallel_loop_access !24
  %arrayidx.i.i1 = getelementptr <4 x i32>, <4 x i32>* %10, i64 %indvars.iv.next.i146, i64 1
  %.i156 = load i32, i32* %arrayidx.i.i1, align 4, !llvm.mem.parallel_loop_access !24
  %arrayidx.i.i2 = getelementptr <4 x i32>, <4 x i32>* %10, i64 %indvars.iv.next.i146, i64 2
  %.i257 = load i32, i32* %arrayidx.i.i2, align 8, !llvm.mem.parallel_loop_access !24
  %add77.i = add nsw i32 %.i055, %.i048
  %add80.i = add nsw i32 %.i156, %.i150
  %add83.i = add nsw i32 %.i257, %.i252
  %mul84.i = mul nsw i32 %add83.i, %1
  %add85.i = add nsw i32 %add80.i, %mul84.i
  %mul86.i = mul nsw i32 %add85.i, %0
  %add87.i = add nsw i32 %add77.i, %mul86.i
  %mul88.i = shl nsw i32 %add87.i, 5
  %idx.ext89.i = sext i32 %mul88.i to i64
  %add.ptr90.i = getelementptr inbounds <4 x float>, <4 x float>* %2, i64 %idx.ext.i, i64 %idx.ext89.i
  %mul93.i = shl i32 %inc.i152, 8
  %165 = load i32, i32* %160, align 4, !llvm.mem.parallel_loop_access !24
  %add94.i = add nsw i32 %165, %mul93.i
  %166 = load i64, i64* %161, align 8, !llvm.mem.parallel_loop_access !24
  %arrayidx96.i = getelementptr inbounds float, float* %add.ptr90.i, i64 %166
  %167 = bitcast float* %arrayidx96.i to i32*
  %168 = load i32, i32* %167, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !24
  %169 = load i32, i32* %162, align 4, !llvm.mem.parallel_loop_access !24
  %add97.i = or i32 %169, %add94.i
  %idxprom98.i = sext i32 %add97.i to i64
  %arrayidx99.i = getelementptr inbounds [1024 x float], [1024 x float]* %11, i64 0, i64 %idxprom98.i
  %170 = bitcast float* %arrayidx99.i to i32*
  store i32 %168, i32* %170, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !24
  %171 = load i64, i64* %163, align 8, !llvm.mem.parallel_loop_access !24
  %arrayidx102.i = getelementptr inbounds float, float* %add.ptr90.i, i64 %171
  %172 = bitcast float* %arrayidx102.i to i32*
  %173 = load i32, i32* %172, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !24
  %add104.i = or i32 %add97.i, 16
  %idxprom105.i = sext i32 %add104.i to i64
  %arrayidx106.i = getelementptr inbounds [1024 x float], [1024 x float]* %11, i64 0, i64 %idxprom105.i
  %174 = bitcast float* %arrayidx106.i to i32*
  store i32 %173, i32* %174, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !24
  %inc.i = add nuw nsw i32 %inc.i152, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i146, 8
  %add107.i = add nsw i32 %add107.i149, 8
  %cmp72.i = icmp slt i32 %inc.i, 4
  br i1 %cmp72.i, label %land.rhs.i, label %for.end.r_exit.i

for.end.r_exit.i:                                 ; preds = %for.body76.i, %land.rhs.i
  %add107.i155 = phi i32 [ %add107.i, %for.body76.i ], [ %164, %land.rhs.i ]
  %175 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.4.pocl_context.i, i64 0, i64 %_local_id_z.2, i64 %_local_id_y.2, i64 %_local_id_x.2
  store i32 %add107.i155, i32* %175, align 4, !llvm.mem.parallel_loop_access !24
  %176 = add nuw nsw i64 %_local_id_x.2, 1
  %exitcond181 = icmp eq i64 %176, 8
  br i1 %exitcond181, label %pregion_for_end110.i, label %pregion_for_entry.for.body.i, !llvm.loop !25

pregion_for_end114.i:                             ; preds = %pregion_for_end110.i
  %177 = add nuw nsw i64 %_local_id_z.2, 1
  %exitcond183 = icmp eq i64 %177, 2
  br i1 %exitcond183, label %pregion_for_entry.pregion_for_init101.i.preheader, label %pregion_for_entry.pregion_for_init113.i, !llvm.loop !27

pregion_for_entry.pregion_for_init101.i.preheader: ; preds = %pregion_for_end114.i
  %178 = load i32, i32* %9, align 4, !tbaa !9, !llvm.mem.parallel_loop_access !30
  br label %pregion_for_entry.pregion_for_init101.i

pregion_for_end110.i:                             ; preds = %for.end.r_exit.i
  %179 = add nuw nsw i64 %_local_id_y.2, 1
  %exitcond182 = icmp eq i64 %179, 8
  br i1 %exitcond182, label %pregion_for_end114.i, label %pregion_for_entry.pregion_for_init109.i, !llvm.loop !26

pregion_for_entry.pregion_for_init101.i:          ; preds = %pregion_for_end102.i, %pregion_for_entry.pregion_for_init101.i.preheader
  %_local_id_z.3 = phi i64 [ %214, %pregion_for_end102.i ], [ 0, %pregion_for_entry.pregion_for_init101.i.preheader ]
  br label %pregion_for_entry.pregion_for_init97.i

pregion_for_entry.pregion_for_init97.i:           ; preds = %pregion_for_end98.i, %pregion_for_entry.pregion_for_init101.i
  %_local_id_y.3 = phi i64 [ 0, %pregion_for_entry.pregion_for_init101.i ], [ %215, %pregion_for_end98.i ]
  br label %pregion_for_entry.for.end.postbarrier.i

pregion_for_entry.for.end.postbarrier.i:          ; preds = %for.end177.r_exit.i, %pregion_for_entry.pregion_for_init97.i
  %_local_id_x.3 = phi i64 [ 0, %pregion_for_entry.pregion_for_init97.i ], [ %213, %for.end177.r_exit.i ]
  %180 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.1.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  %181 = load i32, i32* %180, align 4
  %add108.i = add nsw i32 %181, 32
  %cmp109.i = icmp sgt i32 %add108.i, %178
  %sub.i = sub nsw i32 %178, %181
  %182 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.2.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  %183 = load i32, i32* %182, align 4, !llvm.mem.parallel_loop_access !30
  %sub.numbins.0.i = select i1 %cmp109.i, i32 %sub.i, i32 %183
  %184 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.sub.numbins.0.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  store i32 %sub.numbins.0.i, i32* %184, align 4, !llvm.mem.parallel_loop_access !30
  %cmp112267.i = icmp sgt i32 %sub.numbins.0.i, 0
  %185 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.3.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  %186 = bitcast float* %185 to i32*
  %187 = load i32, i32* %186, align 4
  br i1 %cmp112267.i, label %for.cond116.preheader.preheader.i, label %for.end177.r_exit.i

for.cond116.preheader.preheader.i:                ; preds = %pregion_for_entry.for.end.postbarrier.i
  %wide.trip.count.i = zext i32 %sub.numbins.0.i to i64
  %188 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul26.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  %189 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul32.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  %190 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul42.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  br label %for.cond116.preheader.i

for.cond116.preheader.i:                          ; preds = %for.end174.i, %for.cond116.preheader.preheader.i
  %191 = phi i32 [ %209, %for.end174.i ], [ %187, %for.cond116.preheader.preheader.i ]
  %indvars.iv.next284.i161 = phi i64 [ %indvars.iv.next284.i, %for.end174.i ], [ 0, %for.cond116.preheader.preheader.i ]
  %192 = trunc i64 %indvars.iv.next284.i161 to i32
  %mul120.i = shl nsw i32 %192, 5
  %193 = sext i32 %mul120.i to i64
  br label %for.body119.i

for.body119.i:                                    ; preds = %for.inc172.i, %for.cond116.preheader.i
  %.in = phi i32 [ %208, %for.inc172.i ], [ %191, %for.cond116.preheader.i ]
  %indvars.iv.next277.i157 = phi i64 [ %indvars.iv.next277.i, %for.inc172.i ], [ 0, %for.cond116.preheader.i ]
  %194 = bitcast i32 %.in to float
  %195 = shl nsw i64 %indvars.iv.next277.i157, 2
  %196 = add nsw i64 %195, %193
  %197 = or i64 %196, 3
  %arrayidx142.i = getelementptr inbounds [1024 x float], [1024 x float]* %11, i64 0, i64 %197
  %198 = load float, float* %arrayidx142.i, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !30
  %cmp143.i = fcmp oeq float %198, 0.000000e+00
  br i1 %cmp143.i, label %for.end174.i, label %if.end146.i

if.end146.i:                                      ; preds = %for.body119.i
  %199 = or i64 %196, 2
  %arrayidx136.i = getelementptr inbounds [1024 x float], [1024 x float]* %11, i64 0, i64 %199
  %200 = load float, float* %arrayidx136.i, align 8, !tbaa !28, !llvm.mem.parallel_loop_access !30
  %201 = or i64 %196, 1
  %arrayidx130.i = getelementptr inbounds [1024 x float], [1024 x float]* %11, i64 0, i64 %201
  %202 = load float, float* %arrayidx130.i, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !30
  %arrayidx124.i = getelementptr inbounds [1024 x float], [1024 x float]* %11, i64 0, i64 %196
  %203 = load float, float* %arrayidx124.i, align 16, !tbaa !28, !llvm.mem.parallel_loop_access !30
  %204 = load float, float* %188, align 4, !llvm.mem.parallel_loop_access !30
  %sub147.i = fsub float %203, %204
  %mul149.i = fmul float %sub147.i, %sub147.i
  %205 = load float, float* %189, align 4, !llvm.mem.parallel_loop_access !30
  %sub150.i = fsub float %202, %205
  %mul152.i = fmul float %sub150.i, %sub150.i
  %add153.i = fadd float %mul149.i, %mul152.i
  %206 = load float, float* %190, align 4, !llvm.mem.parallel_loop_access !30
  %sub154.i = fsub float %200, %206
  %mul156.i = fmul float %sub154.i, %sub154.i
  %add157.i = fadd float %mul156.i, %add153.i
  %cmp158.i = fcmp olt float %add157.i, %5
  br i1 %cmp158.i, label %if.then160.i, label %for.inc172.i

if.then160.i:                                     ; preds = %if.end146.i
  %mul161.i = fmul float %add157.i, %6
  %sub162.i = fsub float 1.000000e+00, %mul161.i
  %call.i.i.i.i.i.i.i.i = tail call i32 @ilogbf(float %add157.i) #0
  %and.i.i.i.i.i.i = and i32 %call.i.i.i.i.i.i.i.i, 1
  %tobool.i.i.i.i.i.i.i = icmp ne i32 %and.i.i.i.i.i.i, 0
  %retval.sroa.0.0.copyload.i.i.i.i.i.i.i = select i1 %tobool.i.i.i.i.i.i.i, float 0x3FE2A7EFA0000000, float 0x3FEA5E3540000000
  %shr.i.i.i.i.i.i = ashr i32 %call.i.i.i.i.i.i.i.i, 1
  %sub.i128.i.i.i.i.i = sub nsw i32 0, %shr.i.i.i.i.i.i
  %call.i.i.i120.i.i.i.i.i = tail call float @ldexpf(float %retval.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 %sub.i128.i.i.i.i.i) #0
  %mul.i110.i.i.i.i.i = fmul float %add157.i, 5.000000e-01
  %mul.i104.i.i.i.i.i = fmul float %mul.i110.i.i.i.i.i, %call.i.i.i120.i.i.i.i.i
  %mul.i99.i.i.i.i.i = fmul float %call.i.i.i120.i.i.i.i.i, %mul.i104.i.i.i.i.i
  %sub.i94.i.i.i.i.i = fsub float 5.000000e-01, %mul.i99.i.i.i.i.i
  %mul.i89.i.i.i.i.i = fmul float %call.i.i.i120.i.i.i.i.i, %sub.i94.i.i.i.i.i
  %add.i.i83.i.i.i.i.i = fadd float %call.i.i.i120.i.i.i.i.i, %mul.i89.i.i.i.i.i
  %mul.i75.i.i.i.i.i = fmul float %mul.i110.i.i.i.i.i, %add.i.i83.i.i.i.i.i
  %mul.i70.i.i.i.i.i = fmul float %add.i.i83.i.i.i.i.i, %mul.i75.i.i.i.i.i
  %sub.i65.i.i.i.i.i = fsub float 5.000000e-01, %mul.i70.i.i.i.i.i
  %mul.i60.i.i.i.i.i = fmul float %add.i.i83.i.i.i.i.i, %sub.i65.i.i.i.i.i
  %add.i.i54.i.i.i.i.i = fadd float %add.i.i83.i.i.i.i.i, %mul.i60.i.i.i.i.i
  %mul.i46.i.i.i.i.i = fmul float %mul.i110.i.i.i.i.i, %add.i.i54.i.i.i.i.i
  %mul.i41.i.i.i.i.i = fmul float %add.i.i54.i.i.i.i.i, %mul.i46.i.i.i.i.i
  %sub.i36.i.i.i.i.i = fsub float 5.000000e-01, %mul.i41.i.i.i.i.i
  %mul.i31.i.i.i.i.i = fmul float %add.i.i54.i.i.i.i.i, %sub.i36.i.i.i.i.i
  %add.i.i25.i.i.i.i.i = fadd float %add.i.i54.i.i.i.i.i, %mul.i31.i.i.i.i.i
  %mul.i17.i.i.i.i.i = fmul float %mul.i110.i.i.i.i.i, %add.i.i25.i.i.i.i.i
  %mul.i12.i.i.i.i.i = fmul float %add.i.i25.i.i.i.i.i, %mul.i17.i.i.i.i.i
  %sub.i.i.i.i.i.i = fsub float 5.000000e-01, %mul.i12.i.i.i.i.i
  %mul.i.i.i.i.i.i = fmul float %add.i.i25.i.i.i.i.i, %sub.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i = fadd float %add.i.i25.i.i.i.i.i, %mul.i.i.i.i.i.i
  %mul164.i = fmul float %198, %add.i.i.i.i.i.i.i
  %mul165.i = fmul float %sub162.i, %mul164.i
  %mul166.i = fmul float %sub162.i, %mul165.i
  %add167.i = fadd float %194, %mul166.i
  %207 = bitcast float %add167.i to i32
  br label %for.inc172.i

for.inc172.i:                                     ; preds = %if.then160.i, %if.end146.i
  %208 = phi i32 [ %207, %if.then160.i ], [ %.in, %if.end146.i ]
  %indvars.iv.next277.i = add nuw nsw i64 %indvars.iv.next277.i157, 1
  %cmp117.i = icmp slt i64 %indvars.iv.next277.i, 8
  br i1 %cmp117.i, label %for.body119.i, label %for.end174.i

for.end174.i:                                     ; preds = %for.inc172.i, %for.body119.i
  %209 = phi i32 [ %208, %for.inc172.i ], [ %.in, %for.body119.i ]
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv.next284.i161, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next284.i, %wide.trip.count.i
  br i1 %exitcond.i, label %for.end177.r_exit.i.loopexit, label %for.cond116.preheader.i

for.end177.r_exit.i.loopexit:                     ; preds = %for.end174.i
  br label %for.end177.r_exit.i

for.end177.r_exit.i:                              ; preds = %for.end177.r_exit.i.loopexit, %pregion_for_entry.for.end.postbarrier.i
  %210 = phi i32 [ %187, %pregion_for_entry.for.end.postbarrier.i ], [ %209, %for.end177.r_exit.i.loopexit ]
  %211 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.0.pocl_context.i, i64 0, i64 %_local_id_z.3, i64 %_local_id_y.3, i64 %_local_id_x.3
  %212 = bitcast float* %211 to i32*
  store i32 %210, i32* %212, align 4, !llvm.mem.parallel_loop_access !30
  %213 = add nuw nsw i64 %_local_id_x.3, 1
  %exitcond184 = icmp eq i64 %213, 8
  br i1 %exitcond184, label %pregion_for_end98.i, label %pregion_for_entry.for.end.postbarrier.i, !llvm.loop !31

pregion_for_end102.i:                             ; preds = %pregion_for_end98.i
  %214 = add nuw nsw i64 %_local_id_z.3, 1
  %exitcond186 = icmp eq i64 %214, 2
  br i1 %exitcond186, label %pregion_for_entry.pregion_for_init89.i.preheader, label %pregion_for_entry.pregion_for_init101.i, !llvm.loop !33

pregion_for_entry.pregion_for_init89.i.preheader: ; preds = %pregion_for_end102.i
  br label %pregion_for_entry.pregion_for_init89.i

pregion_for_end98.i:                              ; preds = %for.end177.r_exit.i
  %215 = add nuw nsw i64 %_local_id_y.3, 1
  %exitcond185 = icmp eq i64 %215, 8
  br i1 %exitcond185, label %pregion_for_end102.i, label %pregion_for_entry.pregion_for_init97.i, !llvm.loop !32

pregion_for_entry.pregion_for_init89.i:           ; preds = %pregion_for_end90.i, %pregion_for_entry.pregion_for_init89.i.preheader
  %_local_id_z.4 = phi i64 [ %218, %pregion_for_end90.i ], [ 0, %pregion_for_entry.pregion_for_init89.i.preheader ]
  br label %pregion_for_entry.pregion_for_init85.i

pregion_for_entry.pregion_for_init85.i:           ; preds = %pregion_for_end86.i, %pregion_for_entry.pregion_for_init89.i
  %_local_id_y.4 = phi i64 [ 0, %pregion_for_entry.pregion_for_init89.i ], [ %219, %pregion_for_end86.i ]
  br label %pregion_for_entry.for.end177.brexitbarrier.prebarrier.postbarrier.i

pregion_for_end94.i:                              ; preds = %pregion_for_end90.i
  %cmp.i.le.le.le = icmp slt i32 %add179.i, %178
  br i1 %cmp.i.le.le.le, label %pregion_for_entry.pregion_for_init125.i.preheader, label %pregion_for_entry.pregion_for_init81.i.preheader

pregion_for_entry.pregion_for_init81.i.preheader: ; preds = %pregion_for_end94.i
  br label %pregion_for_entry.pregion_for_init81.i

pregion_for_entry.pregion_for_init125.i.preheader: ; preds = %pregion_for_end94.i
  %.pre.i.i0 = load i32, i32* %.i0, align 16, !llvm.mem.parallel_loop_access !34
  %.pre.i.i1 = load i32, i32* %.i1, align 4, !llvm.mem.parallel_loop_access !34
  %.pre.i.i2 = load i32, i32* %.i2, align 8, !llvm.mem.parallel_loop_access !34
  %.pre.i.i3 = load i32, i32* %.i3, align 4, !llvm.mem.parallel_loop_access !34
  %broadcast.splatinsert265 = insertelement <8 x i32> undef, i32 %.pre.i.i0, i32 0
  %broadcast.splat266 = shufflevector <8 x i32> %broadcast.splatinsert265, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert267 = insertelement <8 x i32> undef, i32 %.pre.i.i1, i32 0
  %broadcast.splat268 = shufflevector <8 x i32> %broadcast.splatinsert267, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert269 = insertelement <8 x i32> undef, i32 %.pre.i.i2, i32 0
  %broadcast.splat270 = shufflevector <8 x i32> %broadcast.splatinsert269, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert271 = insertelement <8 x i32> undef, i32 %.pre.i.i3, i32 0
  %broadcast.splat272 = shufflevector <8 x i32> %broadcast.splatinsert271, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert274 = insertelement <8 x i32> undef, i32 %178, i32 0
  %broadcast.splat275 = shufflevector <8 x i32> %broadcast.splatinsert274, <8 x i32> undef, <8 x i32> zeroinitializer
  %216 = shufflevector <8 x i32> %broadcast.splat266, <8 x i32> %broadcast.splat268, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %217 = shufflevector <8 x i32> %broadcast.splat270, <8 x i32> %broadcast.splat272, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec273 = shufflevector <16 x i32> %216, <16 x i32> %217, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  br label %pregion_for_entry.pregion_for_init125.i

pregion_for_end90.i:                              ; preds = %pregion_for_end86.i
  %218 = add nuw nsw i64 %_local_id_z.4, 1
  %exitcond189 = icmp eq i64 %218, 2
  br i1 %exitcond189, label %pregion_for_end94.i, label %pregion_for_entry.pregion_for_init89.i, !llvm.loop !38

pregion_for_end86.i:                              ; preds = %pregion_for_entry.for.end177.brexitbarrier.prebarrier.postbarrier.i
  %219 = add nuw nsw i64 %_local_id_y.4, 1
  %exitcond188 = icmp eq i64 %219, 8
  br i1 %exitcond188, label %pregion_for_end90.i, label %pregion_for_entry.pregion_for_init85.i, !llvm.loop !39

pregion_for_entry.for.end177.brexitbarrier.prebarrier.postbarrier.i: ; preds = %pregion_for_entry.for.end177.brexitbarrier.prebarrier.postbarrier.i, %pregion_for_entry.pregion_for_init85.i
  %_local_id_x.4 = phi i64 [ 0, %pregion_for_entry.pregion_for_init85.i ], [ %225, %pregion_for_entry.for.end177.brexitbarrier.prebarrier.postbarrier.i ]
  %220 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.sub.numbins.0.pocl_context.i, i64 0, i64 %_local_id_z.4, i64 %_local_id_y.4, i64 %_local_id_x.4
  %221 = load i32, i32* %220, align 4, !llvm.mem.parallel_loop_access !40
  %222 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.1.pocl_context.i, i64 0, i64 %_local_id_z.4, i64 %_local_id_y.4, i64 %_local_id_x.4
  %223 = load i32, i32* %222, align 4, !llvm.mem.parallel_loop_access !40
  %add179.i = add nsw i32 %223, %221
  %224 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.add179.pocl_context.i, i64 0, i64 %_local_id_z.4, i64 %_local_id_y.4, i64 %_local_id_x.4
  store i32 %add179.i, i32* %224, align 4, !llvm.mem.parallel_loop_access !40
  %225 = add nuw nsw i64 %_local_id_x.4, 1
  %exitcond187 = icmp eq i64 %225, 8
  br i1 %exitcond187, label %pregion_for_end86.i, label %pregion_for_entry.for.end177.brexitbarrier.prebarrier.postbarrier.i, !llvm.loop !41

pregion_for_entry.pregion_for_init125.i:          ; preds = %pregion_for_end126.i, %pregion_for_entry.pregion_for_init125.i.preheader
  %_local_id_z.5 = phi i64 [ %247, %pregion_for_end126.i ], [ 0, %pregion_for_entry.pregion_for_init125.i.preheader ]
  br label %pregion_for_entry.pregion_for_init121.i

pregion_for_entry.pregion_for_init121.i:          ; preds = %pregion_for_end122.i, %pregion_for_entry.pregion_for_init125.i
  %_local_id_y.5 = phi i64 [ 0, %pregion_for_entry.pregion_for_init125.i ], [ %248, %pregion_for_end122.i ]
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %pregion_for_entry.pregion_for_init121.i
  %index258 = phi i64 [ 0, %pregion_for_entry.pregion_for_init121.i ], [ %index.next259, %vector.body253 ]
  %226 = getelementptr [2 x [8 x [8 x <4 x i32>]]], [2 x [8 x [8 x <4 x i32>]]]* %..ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258, i64 0
  %227 = bitcast i32* %226 to <32 x i32>*
  store <32 x i32> %interleaved.vec273, <32 x i32>* %227, align 64
  %228 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %..ex_phi76.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %229 = bitcast i32* %228 to <8 x i32>*
  store <8 x i32> %broadcast.splat275, <8 x i32>* %229, align 32
  %230 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.4.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %231 = bitcast i32* %230 to <8 x i32>*
  %wide.load276 = load <8 x i32>, <8 x i32>* %231, align 32
  %232 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.nbrid.0274.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %233 = bitcast i32* %232 to <8 x i32>*
  store <8 x i32> %wide.load276, <8 x i32>* %233, align 32
  %234 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.add179.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %235 = bitcast i32* %234 to <8 x i32>*
  %wide.load277 = load <8 x i32>, <8 x i32>* %235, align 32
  %236 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.totalbins.0273.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %237 = bitcast i32* %236 to <8 x i32>*
  store <8 x i32> %wide.load277, <8 x i32>* %237, align 32
  %238 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.sub.numbins.0.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %239 = bitcast i32* %238 to <8 x i32>*
  %wide.load278 = load <8 x i32>, <8 x i32>* %239, align 32
  %240 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.numbins.0272.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %241 = bitcast i32* %240 to <8 x i32>*
  store <8 x i32> %wide.load278, <8 x i32>* %241, align 32
  %242 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.0.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %243 = bitcast float* %242 to <8 x i32>*
  %wide.load279 = load <8 x i32>, <8 x i32>* %243, align 32
  %244 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.energy.0271.ex_phi.pocl_context.i, i64 0, i64 %_local_id_z.5, i64 %_local_id_y.5, i64 %index258
  %245 = bitcast float* %244 to <8 x i32>*
  store <8 x i32> %wide.load279, <8 x i32>* %245, align 32
  %index.next259 = add i64 %index258, 8
  %246 = icmp eq i64 %index258, 0
  br i1 %246, label %pregion_for_end122.i, label %vector.body253, !llvm.loop !42

pregion_for_end126.i:                             ; preds = %pregion_for_end122.i
  %247 = add nuw nsw i64 %_local_id_z.5, 1
  %exitcond192 = icmp eq i64 %247, 2
  br i1 %exitcond192, label %pregion_for_init117.i.loopexit, label %pregion_for_entry.pregion_for_init125.i, !llvm.loop !37

pregion_for_end122.i:                             ; preds = %vector.body253
  %248 = add nuw nsw i64 %_local_id_y.5, 1
  %exitcond191 = icmp eq i64 %248, 8
  br i1 %exitcond191, label %pregion_for_end126.i, label %pregion_for_entry.pregion_for_init121.i, !llvm.loop !36

pregion_for_entry.pregion_for_init81.i:           ; preds = %pregion_for_end78.i, %pregion_for_entry.pregion_for_init81.i.preheader
  %_local_id_z.6 = phi i64 [ %271, %pregion_for_end78.i ], [ 0, %pregion_for_entry.pregion_for_init81.i.preheader ]
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %pregion_for_entry.pregion_for_init81.i
  %_local_id_y.6 = phi i64 [ 0, %pregion_for_entry.pregion_for_init81.i ], [ %272, %pregion_for_end.i ]
  br label %pregion_for_entry.for.end180.loopexit.i

pregion_for_entry.for.end180.loopexit.i:          ; preds = %pregion_for_entry.for.end180.loopexit.i, %pregion_for_entry.pregion_for_init.i
  %_local_id_x.6 = phi i64 [ 0, %pregion_for_entry.pregion_for_init.i ], [ %258, %pregion_for_entry.for.end180.loopexit.i ]
  %249 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.0.pocl_context.i, i64 0, i64 %_local_id_z.6, i64 %_local_id_y.6, i64 %_local_id_x.6
  %250 = bitcast float* %249 to i32*
  %251 = load i32, i32* %250, align 4, !llvm.mem.parallel_loop_access !43
  %252 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.add4.pocl_context.i, i64 0, i64 %_local_id_z.6, i64 %_local_id_y.6, i64 %_local_id_x.6
  %253 = load i64, i64* %252, align 8, !llvm.mem.parallel_loop_access !43
  %254 = shl i64 %253, 32
  %255 = ashr exact i64 %254, 32
  %256 = getelementptr inbounds float, float* %add.ptr19.i, i64 %255
  %257 = bitcast float* %256 to i32*
  store i32 %251, i32* %257, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !43
  %258 = add nuw nsw i64 %_local_id_x.6, 1
  %exitcond = icmp eq i64 %258, 8
  br i1 %exitcond, label %pregion_for_end.i, label %pregion_for_entry.for.end180.loopexit.i, !llvm.loop !44

for.end180.r_exit.i:                              ; preds = %14
  %259 = bitcast float* %add.ptr19.i to i32*
  store i32 0, i32* %259, align 4, !tbaa !28, !llvm.mem.parallel_loop_access !47
  br label %pregion_for_entry.pregion_for_init161.i

pregion_for_end166.i:                             ; preds = %pregion_for_end162.i
  call void @llvm.lifetime.end(i64 512, i8* nonnull %23)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %24)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %25)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %26)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %27)
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %28)
  call void @llvm.lifetime.end(i64 2048, i8* nonnull %29)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %30)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %31)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %32)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %33)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %34)
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %35)
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %36)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %37)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %38)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %39)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %40)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %41)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %42)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %43)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %44)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %45)
  tail call void @llvm.stackrestore(i8* %savedstack)
  br label %opencl_cutoff_potential_lattice.exit

pregion_for_end162.i:                             ; preds = %pregion_for_end158.i
  %260 = add nuw nsw i64 %_local_id_z.7, 1
  %exitcond199 = icmp eq i64 %260, 2
  br i1 %exitcond199, label %pregion_for_end166.i, label %pregion_for_entry.pregion_for_init161.i, !llvm.loop !8

pregion_for_end158.i:                             ; preds = %pregion_for_entry.entry.peeled_wi.pocl_1.i
  %261 = add nuw nsw i64 %_local_id_y.7, 1
  %exitcond198 = icmp eq i64 %261, 8
  br i1 %exitcond198, label %pregion_for_end162.i, label %pregion_for_entry.pregion_for_init157.i, !llvm.loop !7

pregion_for_entry.pregion_for_init161.i:          ; preds = %pregion_for_end162.i, %for.end180.r_exit.i
  %.pocl.local_id_x_init.i.2 = phi i64 [ 1, %for.end180.r_exit.i ], [ 0, %pregion_for_end162.i ]
  %_local_id_z.7 = phi i64 [ 0, %for.end180.r_exit.i ], [ %260, %pregion_for_end162.i ]
  %mul.peeled_wi.pocl_1.i = shl i64 %_local_id_z.7, 3
  %add40.peeled_wi.pocl_1.i = add nuw nsw i64 %_local_id_z.7, %add38.i
  %conv41.peeled_wi.pocl_1.i = uitofp i64 %add40.peeled_wi.pocl_1.i to float
  %mul42.peeled_wi.pocl_1.i = fmul float %conv41.peeled_wi.pocl_1.i, %4
  br label %pregion_for_entry.pregion_for_init157.i

pregion_for_entry.pregion_for_init157.i:          ; preds = %pregion_for_entry.pregion_for_init161.i, %pregion_for_end158.i
  %.pocl.local_id_x_init.i.3 = phi i64 [ %.pocl.local_id_x_init.i.2, %pregion_for_entry.pregion_for_init161.i ], [ 0, %pregion_for_end158.i ]
  %_local_id_y.7 = phi i64 [ 0, %pregion_for_entry.pregion_for_init161.i ], [ %261, %pregion_for_end158.i ]
  %add.peeled_wi.pocl_1.i = add nuw nsw i64 %_local_id_y.7, %mul.peeled_wi.pocl_1.i
  %mul2.peeled_wi.pocl_1.i = shl i64 %add.peeled_wi.pocl_1.i, 3
  %add30.peeled_wi.pocl_1.i = add nuw nsw i64 %_local_id_y.7, %mul28.i
  %conv31.peeled_wi.pocl_1.i = uitofp i64 %add30.peeled_wi.pocl_1.i to float
  %mul32.peeled_wi.pocl_1.i = fmul float %conv31.peeled_wi.pocl_1.i, %4
  br label %pregion_for_entry.entry.peeled_wi.pocl_1.i

pregion_for_entry.entry.peeled_wi.pocl_1.i:       ; preds = %pregion_for_entry.entry.peeled_wi.pocl_1.i, %pregion_for_entry.pregion_for_init157.i
  %_local_id_x.7 = phi i64 [ %.pocl.local_id_x_init.i.3, %pregion_for_entry.pregion_for_init157.i ], [ %269, %pregion_for_entry.entry.peeled_wi.pocl_1.i ]
  %add4.peeled_wi.pocl_1.i = add i64 %_local_id_x.7, %mul2.peeled_wi.pocl_1.i
  %262 = getelementptr [2 x [8 x [8 x i64]]], [2 x [8 x [8 x i64]]]* %.add4.pocl_context.i, i64 0, i64 %_local_id_z.7, i64 %_local_id_y.7, i64 %_local_id_x.7
  store i64 %add4.peeled_wi.pocl_1.i, i64* %262, align 8, !llvm.mem.parallel_loop_access !48
  %conv.peeled_wi.pocl_1.i = trunc i64 %add4.peeled_wi.pocl_1.i to i32
  %263 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.conv.pocl_context.i, i64 0, i64 %_local_id_z.7, i64 %_local_id_y.7, i64 %_local_id_x.7
  store i32 %conv.peeled_wi.pocl_1.i, i32* %263, align 4, !llvm.mem.parallel_loop_access !48
  %add24.peeled_wi.pocl_1.i = add i64 %_local_id_x.7, %mul22.i
  %conv25.peeled_wi.pocl_1.i = uitofp i64 %add24.peeled_wi.pocl_1.i to float
  %mul26.peeled_wi.pocl_1.i = fmul float %conv25.peeled_wi.pocl_1.i, %4
  %264 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul26.pocl_context.i, i64 0, i64 %_local_id_z.7, i64 %_local_id_y.7, i64 %_local_id_x.7
  store float %mul26.peeled_wi.pocl_1.i, float* %264, align 4, !llvm.mem.parallel_loop_access !48
  %265 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul32.pocl_context.i, i64 0, i64 %_local_id_z.7, i64 %_local_id_y.7, i64 %_local_id_x.7
  store float %mul32.peeled_wi.pocl_1.i, float* %265, align 4, !llvm.mem.parallel_loop_access !48
  %266 = getelementptr [2 x [8 x [8 x float]]], [2 x [8 x [8 x float]]]* %.mul42.pocl_context.i, i64 0, i64 %_local_id_z.7, i64 %_local_id_y.7, i64 %_local_id_x.7
  store float %mul42.peeled_wi.pocl_1.i, float* %266, align 4, !llvm.mem.parallel_loop_access !48
  store i32 %conv51.i, i32* %.i0, align 16, !llvm.mem.parallel_loop_access !48
  store i32 %conv59.i, i32* %.i1, align 4, !llvm.mem.parallel_loop_access !48
  store i32 %conv66.i, i32* %.i2, align 8, !llvm.mem.parallel_loop_access !48
  %shr67.peeled_wi.pocl_1.i = ashr i32 %conv.peeled_wi.pocl_1.i, 4
  %267 = getelementptr [2 x [8 x [8 x i32]]], [2 x [8 x [8 x i32]]]* %.shr67.pocl_context.i, i64 0, i64 %_local_id_z.7, i64 %_local_id_y.7, i64 %_local_id_x.7
  store i32 %shr67.peeled_wi.pocl_1.i, i32* %267, align 4, !llvm.mem.parallel_loop_access !48
  %sext.peeled_wi.i = shl i64 %add4.peeled_wi.pocl_1.i, 32
  %idxprom181.peeled_wi.i = ashr exact i64 %sext.peeled_wi.i, 32
  %arrayidx182.peeled_wi.i = getelementptr inbounds float, float* %add.ptr19.i, i64 %idxprom181.peeled_wi.i
  %268 = bitcast float* %arrayidx182.peeled_wi.i to i32*
  store i32 0, i32* %268, align 4, !tbaa !28
  %269 = add nsw i64 %_local_id_x.7, 1
  %270 = icmp ult i64 %269, 8
  br i1 %270, label %pregion_for_entry.entry.peeled_wi.pocl_1.i, label %pregion_for_end158.i, !llvm.loop !6

pregion_for_end82.i:                              ; preds = %pregion_for_end78.i
  call void @llvm.lifetime.end(i64 512, i8* nonnull %23)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %24)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %25)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %26)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %27)
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %28)
  call void @llvm.lifetime.end(i64 2048, i8* nonnull %29)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %30)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %31)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %32)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %33)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %34)
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %35)
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %36)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %37)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %38)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %39)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %40)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %41)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %42)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %43)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %44)
  call void @llvm.lifetime.end(i64 512, i8* nonnull %45)
  tail call void @llvm.stackrestore(i8* %savedstack)
  br label %opencl_cutoff_potential_lattice.exit

pregion_for_end78.i:                              ; preds = %pregion_for_end.i
  %271 = add nuw nsw i64 %_local_id_z.6, 1
  %exitcond180 = icmp eq i64 %271, 2
  br i1 %exitcond180, label %pregion_for_end82.i, label %pregion_for_entry.pregion_for_init81.i, !llvm.loop !46

pregion_for_end.i:                                ; preds = %pregion_for_entry.for.end180.loopexit.i
  %272 = add nuw nsw i64 %_local_id_y.6, 1
  %exitcond179 = icmp eq i64 %272, 8
  br i1 %exitcond179, label %pregion_for_end78.i, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !45

opencl_cutoff_potential_lattice.exit:             ; preds = %pregion_for_end82.i, %pregion_for_end166.i
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
define void @_pocl_launcher_opencl_cutoff_potential_lattice_workgroup(i8** nocapture readonly, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* nocapture readonly) local_unnamed_addr #4 {
  %3 = bitcast i8** %0 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr i8*, i8** %0, i64 1
  %7 = bitcast i8** %6 to i32**
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to <4 x float>***
  %12 = load <4 x float>**, <4 x float>*** %11, align 8
  %13 = load <4 x float>*, <4 x float>** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to float**
  %20 = load float*, float** %19, align 8
  %21 = load float, float* %20, align 4
  %22 = getelementptr i8*, i8** %0, i64 5
  %23 = bitcast i8** %22 to float**
  %24 = load float*, float** %23, align 8
  %25 = load float, float* %24, align 4
  %26 = getelementptr i8*, i8** %0, i64 6
  %27 = bitcast i8** %26 to float**
  %28 = load float*, float** %27, align 8
  %29 = load float, float* %28, align 4
  %30 = getelementptr i8*, i8** %0, i64 7
  %31 = bitcast i8** %30 to float***
  %32 = load float**, float*** %31, align 8
  %33 = load float*, float** %32, align 8
  %34 = getelementptr i8*, i8** %0, i64 8
  %35 = bitcast i8** %34 to i32**
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr i8*, i8** %0, i64 9
  %39 = bitcast i8** %38 to i32***
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr i8*, i8** %0, i64 10
  %43 = bitcast i8** %42 to <4 x i32>***
  %44 = load <4 x i32>**, <4 x i32>*** %43, align 8
  %45 = load <4 x i32>*, <4 x i32>** %44, align 8
  %46 = getelementptr i8*, i8** %0, i64 11
  %47 = bitcast i8** %46 to [1024 x float]***
  %48 = load [1024 x float]**, [1024 x float]*** %47, align 8
  %49 = load [1024 x float]*, [1024 x float]** %48, align 8
  %50 = getelementptr i8*, i8** %0, i64 12
  %51 = bitcast i8** %50 to <4 x i32>***
  %52 = load <4 x i32>**, <4 x i32>*** %51, align 8
  %53 = load <4 x i32>*, <4 x i32>** %52, align 8
  tail call void @_pocl_launcher_opencl_cutoff_potential_lattice(i32 %5, i32 %9, <4 x float>* %13, i32 %17, float %21, float %25, float %29, float* %33, i32 %37, i32* %41, <4 x i32>* %45, [1024 x float]* %49, <4 x i32>* %53, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* %1)
  ret void
}

; Function Attrs: noinline nounwind
define void @_pocl_launcher_opencl_cutoff_potential_lattice_workgroup_fast(i8** nocapture readonly, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* nocapture readonly) local_unnamed_addr #5 {
  %3 = bitcast i8** %0 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr i8*, i8** %0, i64 1
  %7 = bitcast i8** %6 to i32**
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to <4 x float>**
  %12 = load <4 x float>*, <4 x float>** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8*, i8** %0, i64 4
  %18 = bitcast i8** %17 to float**
  %19 = load float*, float** %18, align 8
  %20 = load float, float* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 5
  %22 = bitcast i8** %21 to float**
  %23 = load float*, float** %22, align 8
  %24 = load float, float* %23, align 4
  %25 = getelementptr i8*, i8** %0, i64 6
  %26 = bitcast i8** %25 to float**
  %27 = load float*, float** %26, align 8
  %28 = load float, float* %27, align 4
  %29 = getelementptr i8*, i8** %0, i64 7
  %30 = bitcast i8** %29 to float**
  %31 = load float*, float** %30, align 8
  %32 = getelementptr i8*, i8** %0, i64 8
  %33 = bitcast i8** %32 to i32**
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr i8*, i8** %0, i64 9
  %37 = bitcast i8** %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr i8*, i8** %0, i64 10
  %40 = bitcast i8** %39 to <4 x i32>**
  %41 = load <4 x i32>*, <4 x i32>** %40, align 8
  %42 = getelementptr i8*, i8** %0, i64 11
  %43 = bitcast i8** %42 to [1024 x float]**
  %44 = load [1024 x float]*, [1024 x float]** %43, align 8
  %45 = getelementptr i8*, i8** %0, i64 12
  %46 = bitcast i8** %45 to <4 x i32>**
  %47 = load <4 x i32>*, <4 x i32>** %46, align 8
  tail call void @_pocl_launcher_opencl_cutoff_potential_lattice(i32 %5, i32 %9, <4 x float>* %12, i32 %16, float %20, float %24, float %28, float* %31, i32 %35, i32* %38, <4 x i32>* %41, [1024 x float]* %44, <4 x i32>* %47, { i32, [3 x i64], [3 x i64], [3 x i64], [3 x i64] }* %1)
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+rtm,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="haswell" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+rtm,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noinline nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!opencl.kernels = !{!1}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = distinct !{null}
!2 = !{!3, !4, !5, !6, !7, !8}
!3 = distinct !{!3}
!4 = distinct !{!4}
!5 = distinct !{!5}
!6 = distinct !{!6}
!7 = distinct !{!7}
!8 = distinct !{!8}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.vectorize.width", i32 1}
!15 = !{!"llvm.loop.interleave.count", i32 1}
!16 = distinct !{!16, !17, !14, !15}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19}
!20 = distinct !{!20}
!21 = !{!22, !20, !19}
!22 = distinct !{!22}
!23 = distinct !{!23, !14, !15}
!24 = !{!25, !26, !27}
!25 = distinct !{!25}
!26 = distinct !{!26}
!27 = distinct !{!27}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !11, i64 0}
!30 = !{!31, !32, !33}
!31 = distinct !{!31}
!32 = distinct !{!32}
!33 = distinct !{!33}
!34 = !{!35, !36, !37}
!35 = distinct !{!35}
!36 = distinct !{!36}
!37 = distinct !{!37}
!38 = distinct !{!38}
!39 = distinct !{!39}
!40 = !{!41, !39, !38}
!41 = distinct !{!41}
!42 = distinct !{!42, !14, !15}
!43 = !{!44, !45, !46}
!44 = distinct !{!44}
!45 = distinct !{!45}
!46 = distinct !{!46}
!47 = !{!6, !7, !8}
!48 = !{!3, !4, !5}
