.class public Lcom/sun/mail/handlers/text_xml;
.super Lcom/sun/mail/handlers/text_plain;
.source "text_xml.java"


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 52
    const-class v1, Ljava/lang/String;

    .line 53
    nop

    .line 54
    nop

    .line 51
    const-string/jumbo v2, "text/xml"

    const-string v3, "XML String"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/handlers/text_xml;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/sun/mail/handlers/text_plain;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .line 57
    sget-object v0, Lcom/sun/mail/handlers/text_xml;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method
