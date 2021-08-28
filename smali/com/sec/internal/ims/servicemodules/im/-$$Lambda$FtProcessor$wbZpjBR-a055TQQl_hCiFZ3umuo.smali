.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$3:Ljava/util/Set;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$4:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$5:Z

    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$6:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$7:Z

    iput-boolean p9, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$8:Z

    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$9:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$10:Z

    iput-object p12, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$11:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$3:Ljava/util/Set;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$4:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$5:Z

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$6:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$7:Z

    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$8:Z

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$9:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    iget-boolean v10, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$10:Z

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;->f$11:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$attachFileToGroupChat$4$FtProcessor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    return-object v0
.end method
