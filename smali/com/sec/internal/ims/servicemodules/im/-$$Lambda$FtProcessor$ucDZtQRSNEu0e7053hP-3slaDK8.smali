.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;->f$1:I

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;->f$1:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$setAutoAcceptFt$11$FtProcessor(II)V

    return-void
.end method
