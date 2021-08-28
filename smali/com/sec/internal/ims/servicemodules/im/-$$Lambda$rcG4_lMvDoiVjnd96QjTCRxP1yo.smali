.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$rcG4_lMvDoiVjnd96QjTCRxP1yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$rcG4_lMvDoiVjnd96QjTCRxP1yo;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$rcG4_lMvDoiVjnd96QjTCRxP1yo;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onDeviceOutOfMemory()V

    return-void
.end method
