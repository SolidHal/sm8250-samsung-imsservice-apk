.class public final enum Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
.super Ljava/lang/Enum;
.source "UriGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/UriGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "URIServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

.field public static final enum RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

.field public static final enum VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    const-string v1, "VOLTE_URI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    new-instance v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    const-string v1, "RCS_URI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    .line 12
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->$VALUES:[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .locals 1

    .line 12
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->$VALUES:[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    return-object v0
.end method
