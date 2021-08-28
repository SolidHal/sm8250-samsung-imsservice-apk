.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$fKa51Fa0Jn7B51GDC94TdkChOoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$fKa51Fa0Jn7B51GDC94TdkChOoU;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$fKa51Fa0Jn7B51GDC94TdkChOoU;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$fKa51Fa0Jn7B51GDC94TdkChOoU;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$fKa51Fa0Jn7B51GDC94TdkChOoU;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$readFile$6$FtProcessor(J)V

    return-void
.end method
