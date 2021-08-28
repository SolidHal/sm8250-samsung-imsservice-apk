.class public final enum Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
.super Ljava/lang/Enum;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 20
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "PUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "TRACE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "HEAD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "OPTIONS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 19
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    sget-object v9, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    aput-object v9, v1, v2

    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->$VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->$VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object v0
.end method
