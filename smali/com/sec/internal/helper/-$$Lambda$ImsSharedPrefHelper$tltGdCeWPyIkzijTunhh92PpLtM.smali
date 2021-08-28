.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$tltGdCeWPyIkzijTunhh92PpLtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$tltGdCeWPyIkzijTunhh92PpLtM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$tltGdCeWPyIkzijTunhh92PpLtM;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$tltGdCeWPyIkzijTunhh92PpLtM;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$tltGdCeWPyIkzijTunhh92PpLtM;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$4(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)V

    return-void
.end method
