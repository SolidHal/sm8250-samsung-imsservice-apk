.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$XbDHVR83ETS8-IvioRf8l_H0CHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$XbDHVR83ETS8-IvioRf8l_H0CHc;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$XbDHVR83ETS8-IvioRf8l_H0CHc;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$XbDHVR83ETS8-IvioRf8l_H0CHc;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$XbDHVR83ETS8-IvioRf8l_H0CHc;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getStringSet$6(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
