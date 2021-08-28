.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;->f$2:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;->f$1:Ljava/util/List;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$rTxqSNqH8Q7SoA59IRS1MKVWqtw;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$deleteMessages$3$ImProcessor(Ljava/util/List;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
