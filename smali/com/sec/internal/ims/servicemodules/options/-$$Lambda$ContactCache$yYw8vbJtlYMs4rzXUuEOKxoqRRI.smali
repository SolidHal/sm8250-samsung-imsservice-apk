.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$yYw8vbJtlYMs4rzXUuEOKxoqRRI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$yYw8vbJtlYMs4rzXUuEOKxoqRRI;->f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$yYw8vbJtlYMs4rzXUuEOKxoqRRI;->f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$startContactSync$1$ContactCache()V

    return-void
.end method
