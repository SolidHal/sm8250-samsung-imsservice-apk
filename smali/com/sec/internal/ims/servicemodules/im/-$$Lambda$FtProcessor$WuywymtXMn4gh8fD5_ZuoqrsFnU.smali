.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$1:I

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$2:Z

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$1:I

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$2:Z

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$handleFileResizeResponse$12$FtProcessor(IZLjava/lang/String;)V

    return-void
.end method
