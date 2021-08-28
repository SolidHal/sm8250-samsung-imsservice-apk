.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;->f$1:I

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;->f$1:I

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$resumeSendingTransfer$8$FtProcessor(IZ)V

    return-void
.end method
