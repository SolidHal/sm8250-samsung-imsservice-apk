.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mRawHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 236
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<TT;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 1

    .line 236
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .locals 1

    .line 246
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<TT;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;)V

    return-object v0
.end method

.method public rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->mRawHandle:Ljava/lang/Object;

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    return-object v0
.end method
