.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$sQ27_0EG0OxVhQKwFYSszsYNvs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$sQ27_0EG0OxVhQKwFYSszsYNvs4;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$sQ27_0EG0OxVhQKwFYSszsYNvs4;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$sQ27_0EG0OxVhQKwFYSszsYNvs4;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$sQ27_0EG0OxVhQKwFYSszsYNvs4;->f$1:Ljava/util/Map;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getStringArray$12([Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;)V

    return-void
.end method
