.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hHVS3Fyll1GyneCo0R-UipBGBOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hHVS3Fyll1GyneCo0R-UipBGBOI;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hHVS3Fyll1GyneCo0R-UipBGBOI;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$onMessagingAppPackageReplaced$1$ImModule()V

    return-void
.end method
