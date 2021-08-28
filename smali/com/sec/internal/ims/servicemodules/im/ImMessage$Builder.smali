.class public abstract Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
.source "ImMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 156
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<TT;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 1

    .line 165
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<TT;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)V

    return-object v0
.end method

.method public listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;",
            ")TT;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    .line 161
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    return-object v0
.end method
