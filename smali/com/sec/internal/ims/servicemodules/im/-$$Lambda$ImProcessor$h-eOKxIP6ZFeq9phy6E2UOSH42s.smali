.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$15:I

.field public final synthetic f$16:Z

.field public final synthetic f$17:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$1:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$2:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$3:Ljava/util/Set;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$4:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$5:Ljava/lang/String;

    move v1, p7

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$6:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$7:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$8:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$9:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$10:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$11:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$12:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$13:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$14:Ljava/lang/String;

    move/from16 v1, p16

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$15:I

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$16:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$17:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$1:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$2:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$3:Ljava/util/Set;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$4:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$5:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$6:Z

    iget-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$7:Z

    iget-boolean v9, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$8:Z

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$9:Ljava/lang/String;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$10:Ljava/lang/String;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$11:Ljava/lang/String;

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$12:Ljava/lang/String;

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$13:Ljava/lang/String;

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$14:Ljava/lang/String;

    move-object/from16 v19, v1

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$15:I

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$16:Z

    move/from16 v17, v1

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$h-eOKxIP6ZFeq9phy6E2UOSH42s;->f$17:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v1, v19

    invoke-virtual/range {v1 .. v18}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$sendMessage$0$ImProcessor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    return-object v0
.end method
