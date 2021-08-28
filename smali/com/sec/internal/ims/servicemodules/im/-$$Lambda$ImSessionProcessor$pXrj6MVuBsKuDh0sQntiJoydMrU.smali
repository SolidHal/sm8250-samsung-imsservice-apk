.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$10:Z

.field public final synthetic f$11:Z

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$14:Lcom/sec/ims/util/ImsUri;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$5:I

    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$6:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$7:Z

    iput-boolean p9, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$8:Z

    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$9:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$10:Z

    iput-boolean p12, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$11:Z

    iput-object p13, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$12:Ljava/lang/String;

    iput-object p14, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$13:Ljava/lang/String;

    iput-object p15, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$14:Lcom/sec/ims/util/ImsUri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$5:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$6:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$7:Z

    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$8:Z

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$9:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$10:Z

    iget-boolean v11, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$11:Z

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$12:Ljava/lang/String;

    iget-object v13, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$13:Ljava/lang/String;

    iget-object v14, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$pXrj6MVuBsKuDh0sQntiJoydMrU;->f$14:Lcom/sec/ims/util/ImsUri;

    invoke-virtual/range {v0 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$createChat$1$ImSessionProcessor(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    return-object v0
.end method
