.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;Ljava/lang/String;ZILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$2:Z

    iput p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$3:I

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$2:Z

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$3:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImRevocationHandler$lN-Zr6dl4UnXRsbQGnriYJ07tSo;->f$4:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->lambda$requestMessageRevocation$0$ImRevocationHandler(Ljava/lang/String;ZILjava/util/List;)V

    return-void
.end method
