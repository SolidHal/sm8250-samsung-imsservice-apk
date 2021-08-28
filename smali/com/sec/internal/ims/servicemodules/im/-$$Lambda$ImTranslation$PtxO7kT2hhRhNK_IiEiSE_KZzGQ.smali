.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Landroid/os/Bundle;

.field public final synthetic f$11:Z

.field public final synthetic f$12:Z

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$15:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Landroid/os/Bundle;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$1:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$2:Ljava/util/List;

    move v1, p4

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$3:I

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$4:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$5:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$6:Ljava/lang/String;

    move v1, p8

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$7:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$8:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$9:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$10:Landroid/os/Bundle;

    move v1, p12

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$11:Z

    move v1, p13

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$12:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$13:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$14:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$15:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$1:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$2:Ljava/util/List;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$3:I

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$4:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$5:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$6:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$7:Z

    iget-boolean v9, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$8:Z

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$9:Ljava/lang/String;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$10:Landroid/os/Bundle;

    iget-boolean v12, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$11:Z

    iget-boolean v13, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$12:Z

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$13:Ljava/lang/String;

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$14:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$PtxO7kT2hhRhNK_IiEiSE_KZzGQ;->f$15:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v0 .. v15}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->lambda$requestCreateChat$0$ImTranslation(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Landroid/os/Bundle;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
