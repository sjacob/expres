package au.gov.nla.expres.application.web;
import au.gov.nla.expres.model.CollectionItem;
import au.gov.nla.expres.service.api.CollectionItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = CollectionItemDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = CollectionItem.class)
public class CollectionItemDeserializer extends JsonObjectDeserializer<CollectionItem> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private CollectionItemService collectionItemService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param collectionItemService
     * @param conversionService
     */
    @Autowired
    public CollectionItemDeserializer(@Lazy CollectionItemService collectionItemService, ConversionService conversionService) {
        this.collectionItemService = collectionItemService;
        this.conversionService = conversionService;
    }
}
