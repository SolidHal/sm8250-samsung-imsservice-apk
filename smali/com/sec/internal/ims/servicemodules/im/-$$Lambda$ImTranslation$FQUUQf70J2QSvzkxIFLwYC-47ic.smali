.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImTranslation$FQUUQf70J2QSvzkxIFLwYC-47ic;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->lambda$requestChangeGroupChatIcon$1$ImTranslation(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
