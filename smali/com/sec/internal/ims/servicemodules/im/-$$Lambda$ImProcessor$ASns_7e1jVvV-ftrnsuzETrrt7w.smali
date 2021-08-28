.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$ASns_7e1jVvV-ftrnsuzETrrt7w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$ASns_7e1jVvV-ftrnsuzETrrt7w;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$ASns_7e1jVvV-ftrnsuzETrrt7w;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$ASns_7e1jVvV-ftrnsuzETrrt7w;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$ASns_7e1jVvV-ftrnsuzETrrt7w;->f$1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$resendMessage$1$ImProcessor(I)V

    return-void
.end method
