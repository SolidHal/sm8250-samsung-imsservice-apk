.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$2:I

    iput-boolean p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$2:I

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$Pkhb5PwFOUCjrxtn7m5ULgwZBeM;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$sendComposingNotification$13$ImSessionProcessor(Ljava/lang/String;IZ)V

    return-void
.end method
